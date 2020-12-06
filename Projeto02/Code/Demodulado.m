clear all; clc; close all
% Parâmetros
n_bits = 120000;                % Número de bits
T = 500;                      % Tempo de símbolo OFDM
Ts = 2;                       % Tempo de símbolo em portadora única
K = T/Ts;                     % Número de subportadoras independentes
N = 2*K;                      % DFT de N pontos
sigmas=[0 0.1 1];            % Vetor de variâncias do ruído
EbN0dB = 0:1:14;             % EbNo em dB 
EbN0 = 10.^(-EbN0dB/10);     %Pot. Ruído   
EbNo = 10.^(EbN0dB/10);      % EbN0  linear
Nbps = [1 4];               % Bits por s = 1 para BPSK e 4 para 16QAM
M = 2.^Nbps;

%Construção do gráfico da Pe teórica
for jj=1:length(EbN0dB)
    for i=1:length(Nbps) 
        if Nbps(i) == 1
            Pe = 1/2.*erfc(sqrt(EbNo));
            BERteo = Pe;
        else
            Pe = 2.*(1-(1/sqrt(M(i)))).*erfc(sqrt(3*EbNo/(2*(M(i)-1))));
            BERteo = 1/2.*Pe;
        end
        figure (1)
        figber=semilogy(EbN0dB,BERteo);
        xlabel('Eb/N0 (dB)');
        ylabel('BER');
        set(figber,'Linewidth',2);
        hold on
    end
end

% Gerar bits aleatórios
dataIn=rand(1,n_bits);   % Sequência de números entre 0 e 1 uniformemente distribuídos
dataIn=sign(dataIn-.5);  % Sequência de -1 e 1
% Conversor serial paralelo
dataInMatrix = reshape(dataIn,n_bits/4,4);
BPSK_matriz = reshape(dataIn,n_bits/1,1);

%
% Gerar constelaçao 16-QAM
seq16qam = 2*dataInMatrix(:,1)+dataInMatrix(:,2)+1i*(2*dataInMatrix(:,3)+dataInMatrix(:,4)); 
seq16=seq16qam';
seqBPSK = BPSK_matriz(:,1); 
seqtBPSK = seqBPSK';

% Garantir propriedadade da simetria
X = [seq16 conj(seq16(end:-1:1))]; 
X_BPSK = [seqtBPSK conj(seqtBPSK(end:-1:1))]; 
%
% Construindo xn
xn = zeros(1,N);
xn_BPSK = zeros(1,N);
for n=0:N-1
    for k=0:N-1
        xn_BPSK(n+1) = xn_BPSK(n+1) + 1/sqrt(N)*X_BPSK(k+1)*exp(1i*2*pi*n*k/N);
        xn(n+1) = xn(n+1) + 1/sqrt(N)*X(k+1)*exp(1i*2*pi*n*k/N);
    end
end

% Loop de EbN0dB
for ik = 1:length(EbN0dB)
    %
    %Adição de ruído
    noise = sqrt(EbN0(ik))*randn(1,N)+1i*sqrt(EbN0(ik))*randn(1,N);
    %
    % sinal recebido = xn + ruído 
    rn = xn+noise;
    rn_BPSK = xn_BPSK+noise;
    % DFT de rn
    Y = zeros(1,K);
    Y_BPSK = zeros(1,K);
   % for k=0:K-1
   %     for n=0:N-1
   %         Y(1,k+1) = Y(1,k+1) + 1/sqrt(N)*rn(n+1)*exp(-1i*2*pi*k*n/N);
   %     end
   % end
   
    for k=1:K-1
           Y_BPSK = fft(rn_BPSK/22);
           Y = fft(rn/22);
    end
    
    % Plots
    scatterplot(Y)
    hold on
    scatter(real(seq16),imag(seq16), 'r', '+')
    hold off
    title(['16QAM Sinal com E_b/N_0 de  ', num2str(EbN0dB(ik)), 'dB']);
    
    scatterplot(Y_BPSK)
    hold on
    scatter(real(seqtBPSK),imag(seqtBPSK), 'r', '+')
    hold off
    title(['BPSK Sinal com E_b/N_0 de  ', num2str(EbN0dB(ik)), 'dB']);
    % Demodulação  
    for k= 1:length(Y) % Para percorrer todo o vetor Yk 
        if real(Y(1,k)) > 0 % Para parte real de Yk positiva
            if real(Y(1,k)) > 2
                Z(1,k) = 3;
            else
                Z(1,k) = 1;
            end
        else % Para parte real de Yk negativa ou igual a zero
            if real(Y(1,k)) < -2
                 Z(1,k) = -3;
            else
                 Z(1,k) = -1;
            end
        end

        if imag(Y(1,k)) > 0 % Para parte imaginaria de Yk positiva
            if imag(Y(1,k)) > 2
                Z(1,k) = Z(1,k) + 1i*3;
            else
                Z(1,k) = Z(1,k) + 1i;
            end
        else % Para parte imaginaria de Yk negativa ou igual a zero
            if imag(Y(1,k)) < -2
                 Z(1,k) = Z(1,k) - 1i*3;
            else
                 Z(1,k) = Z(1,k) - 1i;
            end
        end
        end
        %%%%%%%%%%%%%%%%%
        for k_BPSK= 1:length(Y_BPSK) % Para percorrer todo o vetor Yk 
            if real(Y_BPSK(1,k_BPSK)) > 0 % Para parte real de Yk 
                Z_BPSK(1,k_BPSK) = 1;
            else
                Z_BPSK(1,k_BPSK) = -1;
            end
        end
    
    % Contagem de erro
    %error = length(find(Z(1,2:K)-X(1,2:K)));
    variancia = sum(find((Z(1,2:K)-X(1,2:K)).^2))/n_bits;
    disp(['16QAM Para EbN0 de ', num2str(EbN0dB(ik)),'dB, a variância é de ', num2str(variancia)]);
    error = length(find(Z(1,2:K)-X(1,2:K))); % Contagem de erro
    BER16qam(ik)=6*(error/n_bits); % Calculo da BER 
    
    variancia_BPSK = sum(find((Z_BPSK(1,2:K)-X_BPSK(1,2:K)).^2))/n_bits;    % Variancia
    disp(['BPSK Para EbN0 de ', num2str(EbN0dB(ik)),'dB, a variância é de ', num2str(variancia_BPSK)]);
    error_BPSK = length(find(Z_BPSK(1,2:K)-X_BPSK(1,2:K))); % Contagem de erro
    BERbpsk(ik)=error_BPSK/n_bits; % Calculo da BER 
end

figure(1)
figber=semilogy(EbN0dB,BERbpsk, '+');
hold on;
grid on;
xlabel('Eb/N0 (dB)')
ylabel('BER')
set(figber,'Linewidth',2)

figure(1)
figber=semilogy(EbN0dB,BER16qam, '*');
xlabel('Eb/N0 (dB)')
ylabel('BER')
hold on;
grid on;
legend('BPSK teorico','16QAM Teorico','BPSK OFDM','16QAM OFDM');
set(figber,'Linewidth',2)

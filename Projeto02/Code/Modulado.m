clear all; close all;clc;
% Parâmetros
n_bits = 1000;            % Número de bits
T = 500;                  % Tempo de símbolo
Ts = 2;                  % Tempo de símbolo em portadora única
K = T/Ts;                % Número de subportadoras independentes
N = 2*K;                 % N pontos da IDFT
%

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
%
% Construindo xt
xt=zeros(1, T+1);
for t=0:T
    xt=ifft(xn,[],N);
    xt_BPSK=ifft(xn_BPSK,[],N);
end 
%
% Plots
figure(1)
plot(abs(xt));
hold on
stem(abs(xn), 'r')
hold off
title('Sinais OFDM Multiplexado 16QAM')
legend('x(t)','x_n')
xlabel('Tempo')

figure(2)
plot(abs(xt_BPSK));
hold on
stem(abs(xn_BPSK), 'r')
hold off
title('Sinais OFDM Multiplexado BPSK')
legend('x(t)','x_n')
xlabel('Tempo')
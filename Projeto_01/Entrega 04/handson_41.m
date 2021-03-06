% Entrada de par�metros
clear;
clc;
vtFc = [800 1800 2100];
for iFc = 1:length(vtFc)
     dFc = vtFc(iFc);
    for i=1:8
        dAlphaCorr = rand (1);    
        dR = 500;                                                  % Raio do Hex�gono
        %dFc = 800;                                                 % Frequ�ncia da portadora
        dShad = 50;                                                % Dist�ncia de descorrela��o do shadowing
        dSigmaShad = 8;                                            % Desvio padr�o do sombreamento lognormal
        %dAlphaCorr = 0.5;                                          % Coeficiente de correla��o do sombreamento entre ERBs (sombreamento correlacionado)
        % C�lculos de outras vari�veis que dependem dos par�metros de entrada
        %dPasso = ceil(dR/10);                                     % Resolu��o do grid: dist�ncia entre pontos de medi��o
        dPasso = 10;
        dRMin = dPasso;                                            % Raio de seguran�a
        dIntersiteDistance = 2*sqrt(3/4)*dR;                       % Dist�ncia entre ERBs (somente para informa��o)
        %
        % C�lculos de outras vari�veis que dependem dos par�metros de entrada
        dDimXOri = 5*dR;                                           % Dimens�o X do grid
        dDimYOri = 6*sqrt(3/4)*dR;                                 % Dimens�o Y do grid
        dPtdBm = 21;                                               % EIRP (incluindo ganho e perdas) (https://pt.slideshare.net/naveenjakhar12/gsm-link-budget)
        dPtdBmMicro = 20;
        dPtLinear = 10^(dPtdBm/10)*1e-3;                           % EIRP em escala linear
        dHMob = 1.5;                                                 % Altura do receptor
        dHBs = 32;                                                 % Altura do transmissor
        dAhm = 3.2*(log10(11.75*dHMob)).^2 - 4.97;                 % Modelo Okumura-Hata: Cidade grande e fc  >= 400MHz
        % Vetor com posi��es das BSs (grid Hexagonal com 7 c�lulas, uma c�lula central e uma camada de c�lulas ao redor)
        vtBs = [ 0 ];
        dOffset = pi/6;
        vtBsMicro = [ 0 ];
        dOffsetMicro = pi;

        for iBs = 2 : 7
            vtBs = [ vtBs dR*sqrt(3)*exp( j * ( (iBs-2)*pi/3 + dOffset ) ) ];
        end
        for iBsMicro = 2 : 7
            vtBsMicro = [ vtBsMicro 300*sqrt(3)*exp( j * ( (iBsMicro-2)*pi/3 + dOffsetMicro ) ) ];
        end
        vtBs = vtBs + (dDimXOri/2 + j*dDimYOri/2);                        % Ajuste de posi��o das bases (posi��o relativa ao canto inferior esquerdo)
        %
        vtBsMicro = vtBsMicro + (dDimXOri/2 + j*dDimYOri/2);

        % Matriz de refer�ncia com posi��o de cada ponto do grid (posi��o relativa ao canto inferior esquerdo)
        dDimY = ceil(dDimYOri+mod(dDimYOri,dPasso));                      % Ajuste de dimens�o para medir toda a dimens�o do grid
        dDimX = ceil(dDimXOri+mod(dDimXOri,dPasso));                      % Ajuste de dimens�o para medir toda a dimens�o do grid
        [mtPosx,mtPosy] = meshgrid(0:dPasso:dDimX, 0:dPasso:dDimY);
        mtPontosMedicao = mtPosx + j*mtPosy;
        % Inicia��o da Matriz de com a pont�ncia de recebida m�xima em cada ponto
        % medido. Essa pot�ncia � a maior entre as 7 ERBs.
        mtPowerFinaldBm = -inf*ones(size(mtPosy));
        mtPowerFinaldBmMicro = -inf*ones(size(mtPosy));
        %
        % Calcula o sombreamento correlacionado
        %mtShadowingCorr = fCorrShadowing(mtPontosMedicao,dShad,dAlphaCorr,dSigmaShad,dDimXOri,dDimYOri);
        %
        % Calcular O REM de cada ERB e aculumar a maior pot�ncia em cada ponto de medi��o
        for iBsD = 1 : length(vtBs)                                 % Loop nas 7 ERBs

            % Matriz 3D com os pontos de medi��o de cada ERB. Os pontos s�o
            % modelados como n�meros complexos X +jY, sendo X a posi��o na abcissa e Y, a posi��o no eixo das ordenadas
            mtPosEachBS = mtPontosMedicao-(vtBs(iBsD));
            mtDistEachBs = abs(mtPosEachBS);              % Dist�ncia entre cada ponto de medi��o e a sua ERB
            mtDistEachBs(mtDistEachBs < dRMin) = dRMin;             % Implementa��o do raio de seguran�a
            % Okumura-Hata (cidade urbana) - dB
            mtPldB = 69.55 + 26.16*log10(dFc) + (44.9 - 6.55*log10(dHBs))*log10(mtDistEachBs/1e3) - 13.82*log10(dHBs) - dAhm;

            % Pot�ncias recebidas em cada ponto de medi��o sem shadowing
            mtPowerEachBSdBm = dPtdBm - mtPldB;

            % C�lulo da maior pot�ncia em cada ponto de medi��o sem shadowing
            mtPowerFinaldBm = max(mtPowerFinaldBm,mtPowerEachBSdBm);
            mtPowerFinaldBmMicro = max(mtPowerFinaldBm,mtPowerEachBSdBm);
         
        end
         for iBsDMicro=2:length(vtBsMicro)
            mtPosEachBsMicro = mtPontosMedicao-(vtBsMicro(iBsDMicro));
            mtDistEachBsMicro = abs(mtPosEachBsMicro);
            mtDistEachBsMicro(mtDistEachBsMicro < dRMin) = dRMin;    
            mtPldBMicro = 55+38*log10(mtDistEachBsMicro/1e3)+(24.5+1.5*(dFc/925))*log10(dFc);
            %end
            mtPowerEachBSdBmMicro = dPtdBmMicro - mtPldBMicro;
            mtPowerFinaldBmMicro = max(mtPowerFinaldBmMicro,mtPowerEachBSdBmMicro);
        end

    end
    %PotenciaFinaldBm = mtPowerFinaldBm(:);
    %Potenciafinal (65551,1);
    [lin,col] = size(mtPowerFinaldBm);
    for ii=1:lin
        for jj=1:col
            if (mtPowerFinaldBm(ii,jj) > -90);
                PotenciaFinal(ii,jj) = 0;
            else 
                PotenciaFinal(ii,jj) = 1;
            end
        end
    end
    [lin2,col2] = size(mtPowerFinaldBmMicro);
    for ii=1:lin2
        for jj=1:col2
            if (mtPowerFinaldBmMicro(ii,jj) > -90);
                PotenciaFinalMicro(ii,jj) = 0;
            else 
                PotenciaFinalMicro(ii,jj) = 1;
            end
        end
    end   
    % Plot da REM de todo o grid (composi��o das 7 ERBs) sem shadowing
    %dOutRate = 100*length(find(mtPowerFinaldBm < dSensitivity))/numel(mtPowerFinaldBm);
    %PotenciaFinal = PotenciaFinal(:)
    figure;
    %mymap = [1 0 0 ; 0 0 1 ];
    pcolor(mtPosx,mtPosy,PotenciaFinal);
    colormap(parula);
    colorbar;
    fDrawDeploy(dR,vtBs);
    axis equal;
    title(['Todas as 7 ERB em ' num2str(dFc) 'MHz']);
    
    figure;
    %mymap = [0 0 0 ; 1 1 1 ];
    pcolor(mtPosx,mtPosy,PotenciaFinalMicro);
    colormap(parula);
    colorbar;
    fDrawDeploy(dR,vtBs);
    axis equal;
    title(['Todas as 13 ERB com Microc�lulas em ' num2str(dFc) 'MHz']);
  
    if (dFc == 800);
        Outage1 = PotenciaFinal;
        OutageMicro1 = PotenciaFinalMicro;
    end
    if (dFc == 1800);
        Outage2 = PotenciaFinal;
        OutageMicro2 = PotenciaFinalMicro;
    end
    if (dFc == 2100);
        Outage3 = PotenciaFinal;
        OutageMicro3 = PotenciaFinalMicro;
    end

end
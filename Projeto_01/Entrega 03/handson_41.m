% Entrada de par�metros
for i=1:7
%fun��o para pegar um valor aleat�rio de dAlphacor que � Coeficiente de correla��o do sombreamento entre ERBs (sombreamento correlacionado)
dAlphaCorr = rand (1);                                    
dR = 200;                                                  % Raio do Hex�gono
dFc = 800;                                                 % Frequ�ncia da portadora
dShad = 50;                                                % Dist�ncia de descorrela��o do shadowing
dSigmaShad = 8;                                            % Desvio padr�o do sombreamento lognormal
% Resolu��o do grid: dist�ncia entre pontos de medi��o
dPasso = 10;
dRMin = dPasso;                                            % Raio de seguran�a
dIntersiteDistance = 2*sqrt(3/4)*dR;                       % Dist�ncia entre ERBs (somente para informa��o)
% C�lculos de outras vari�veis que dependem dos par�metros de entrada
dDimXOri = 5*dR;                                           % Dimens�o X do grid
dDimYOri = 6*sqrt(3/4)*dR;                                 % Dimens�o Y do grid
dPtdBm = 57;                                               % EIRP (incluindo ganho e perdas) (https://pt.slideshare.net/naveenjakhar12/gsm-link-budget)
dPtLinear = 10^(dPtdBm/10)*1e-3;                           % EIRP em escala linear
dHMob = 5;                                                 % Altura do receptor
dHBs = 30;                                                 % Altura do transmissor
dAhm = 3.2*(log10(11.75*dHMob)).^2 - 4.97;                 % Modelo Okumura-Hata: Cidade grande e fc  >= 400MHz

% Vetor com posi��es das BSs (grid Hexagonal com 7 c�lulas, uma c�lula central e uma camada de c�lulas ao redor)
vtBs = [ 0 ];
dOffset = pi/6;
for iBs = 2 : 7
    vtBs = [ vtBs dR*sqrt(3)*exp( j * ( (iBs-2)*pi/3 + dOffset ) ) ];
end
vtBs = vtBs + (dDimXOri/2 + j*dDimYOri/2);                        % Ajuste de posi��o das bases (posi��o relativa ao canto inferior esquerdo)
%
% Matriz de refer�ncia com posi��o de cada ponto do grid (posi��o relativa ao canto inferior esquerdo)
dDimY = ceil(dDimYOri+mod(dDimYOri,dPasso));                      % Ajuste de dimens�o para medir toda a dimens�o do grid
dDimX = ceil(dDimXOri+mod(dDimXOri,dPasso));                      % Ajuste de dimens�o para medir toda a dimens�o do grid
[mtPosx,mtPosy] = meshgrid(0:dPasso:dDimX, 0:dPasso:dDimY);
mtPontosMedicao = mtPosx + j*mtPosy;
% Inicia��o da Matriz de com a pont�ncia de recebida m�xima em cada ponto
% medido. Essa pot�ncia � a maior entre as 7 ERBs.
mtPowerFinaldBm = -inf*ones(size(mtPosy));
mtPowerFinalShaddBm = -inf*ones(size(mtPosy));
mtPowerFinalShadCorrdBm = -inf*ones(size(mtPosy));
% Calcula o sombreamento correlacionado
mtShadowingCorr = fCorrShadowing(mtPontosMedicao,dShad,dAlphaCorr,dSigmaShad,dDimXOri,dDimYOri);
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
    % Shadowing independente em cada ponto
    mtShadowing = dSigmaShad*randn(size(mtPosy));
    % Pot�ncias recebidas em cada ponto de medi��o sem shadowing
    mtPowerEachBSdBm = dPtdBm - mtPldB;
    % Pot�ncias recebidas em cada ponto de medi��o com shadowing
    mtPowerEachBSShaddBm = dPtdBm - mtPldB + mtShadowing;
    % Pot�ncias recebidas em cada ponto de medi��o com shadowing
    % correlacionado
    mtPowerEachBSShadCorrdBm = dPtdBm - mtPldB + mtShadowingCorr(:,:,iBsD);
    % C�lulo da maior pot�ncia em cada ponto de medi��o sem shadowing
    mtPowerFinaldBm = max(mtPowerFinaldBm,mtPowerEachBSdBm);
    % C�lulo da maior pot�ncia em cada ponto de medi��o com shadowing
    mtPowerFinalShaddBm = max(mtPowerFinalShaddBm,mtPowerEachBSShaddBm);
    % C�lulo da maior pot�ncia em cada ponto de medi��o com shadowing
    mtPowerFinalShadCorrdBm = max(mtPowerFinalShadCorrdBm,mtPowerEachBSShadCorrdBm);
    
end

DevPatMtshd = std(mtShadowing(:)); %Fun��o que calcula o desvio padr�o da matriz mtShadowing
IntDevPatMtshd = round(DevPatMtshd); %Como o valor d� sempre aproximado por ser real, aqui pega apenas o inteiro mais pr�ximo.
ERB = round(i); %Um truque para pegar o valor da itera��o i que t� alterando o dAlphacorr
disp(['O valor de dAlphacorr �: ' num2str(dAlphaCorr)]);
disp(['O valor do Desvio padr�o de mtShadowing � ' num2str(DevPatMtshd)]);
disp(['O valor do Desvio padr�o de mtShadowing no inteiro mais pr�ximo � ' num2str(IntDevPatMtshd)]);
if IntDevPatMtshd == dSigmaShad %Fun��o para comparar se o desvio padr�o correlacionado est� sendo igual ao dSigmaShad
   disp(['O valor � igual na = ' num2str(ERB) 'a. ERB']);
   disp(['##############################################']);
else
   disp(['O valor � diferente na = ' num2str(ERB) 'a. ERB']);
end
end
% Plot da REM de todo o grid (composi��o das 7 ERBs) sem shadowing
figure;
pcolor(mtPosx,mtPosy,mtPowerFinaldBm);
colormap(hsv);
colorbar;
fDrawDeploy(dR,vtBs);
axis equal;
title(['Todas as 7 ERB sem shadowing']);

% Plot da REM de todo o grid (composi��o das 7 ERBs) sem shadowing
figure;
pcolor(mtPosx,mtPosy,mtPowerFinalShaddBm);
colormap(hsv);
colorbar;
fDrawDeploy(dR,vtBs);
axis equal;
title(['Todas as 7 ERB com shadowing']);
%
% Plot da REM de todo o grid (composi��o das 7 ERBs) com shadowing
% correlacionado
figure;
pcolor(mtPosx,mtPosy,mtPowerFinalShadCorrdBm);
colormap(hsv);
colorbar;
fDrawDeploy(dR,vtBs);
axis equal;
title(['Todas as 7 ERB com shadowing correlacionado']);

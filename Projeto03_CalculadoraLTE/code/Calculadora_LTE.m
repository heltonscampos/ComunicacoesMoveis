function varargout = Calculadora_LTE(varargin)
% CALCULADORA_LTE MATLAB code for Calculadora_LTE.fig
%      CALCULADORA_LTE, by itself, creates a new CALCULADORA_LTE or raises the existing
%      singleton*.
%
%      H = CALCULADORA_LTE returns the handle to a new CALCULADORA_LTE or the handle to
%      the existing singleton*.
%
%      CALCULADORA_LTE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CALCULADORA_LTE.M with the given input arguments.
%
%      CALCULADORA_LTE('Property','Value',...) creates a new CALCULADORA_LTE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Calculadora_LTE_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Calculadora_LTE_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Calculadora_LTE

% Last Modified by GUIDE v2.5 25-Jul-2020 04:19:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Calculadora_LTE_OpeningFcn, ...
                   'gui_OutputFcn',  @Calculadora_LTE_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Calculadora_LTE is made visible.
function Calculadora_LTE_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Calculadora_LTE (see VARARGIN)

% Choose default command line output for Calculadora_LTE
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Calculadora_LTE wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Calculadora_LTE_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function prb_Callback(hObject, eventdata, handles)
% hObject    handle to prb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of prb as text
%        str2double(get(hObject,'String')) returns contents of prb as a double


% --- Executes during object creation, after setting all properties.
function prb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to prb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tbs_INDEX_Callback(hObject, eventdata, handles)
% hObject    handle to tbs_INDEX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tbs_INDEX as text
%        str2double(get(hObject,'String')) returns contents of tbs_INDEX as a double


% --- Executes during object creation, after setting all properties.
function tbs_INDEX_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tbs_INDEX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function VALOR_tbs_Callback(hObject, eventdata, handles)
% hObject    handle to VALOR_tbs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of VALOR_tbs as text
%        str2double(get(hObject,'String')) returns contents of VALOR_tbs as a double


% --- Executes during object creation, after setting all properties.
function VALOR_tbs_CreateFcn(hObject, eventdata, handles)
% hObject    handle to VALOR_tbs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MODULACAO_Callback(hObject, eventdata, handles)
% hObject    handle to MODULACAO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MODULACAO as text
%        str2double(get(hObject,'String')) returns contents of MODULACAO as a double


% --- Executes during object creation, after setting all properties.
function MODULACAO_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MODULACAO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function NRE_Callback(hObject, eventdata, handles)
% hObject    handle to NRE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NRE as text
%        str2double(get(hObject,'String')) returns contents of NRE as a double


% --- Executes during object creation, after setting all properties.
function NRE_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NRE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function QTD_SIMBOLOS_Callback(hObject, eventdata, handles)
% hObject    handle to QTD_SIMBOLOS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of QTD_SIMBOLOS as text
%        str2double(get(hObject,'String')) returns contents of QTD_SIMBOLOS as a double


% --- Executes during object creation, after setting all properties.
function QTD_SIMBOLOS_CreateFcn(hObject, eventdata, handles)
% hObject    handle to QTD_SIMBOLOS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SAIDA_EQ_Callback(hObject, eventdata, handles)
% hObject    handle to SAIDA_EQ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SAIDA_EQ as text
%        str2double(get(hObject,'String')) returns contents of SAIDA_EQ as a double


% --- Executes during object creation, after setting all properties.
function SAIDA_EQ_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SAIDA_EQ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SAIDA_TB_Callback(hObject, eventdata, handles)
% hObject    handle to SAIDA_TB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SAIDA_TB as text
%        str2double(get(hObject,'String')) returns contents of SAIDA_TB as a double


% --- Executes during object creation, after setting all properties.
function SAIDA_TB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SAIDA_TB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in BW.
function BW_Callback(hObject, eventdata, handles)
% hObject    handle to BW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns BW contents as cell array
%        contents{get(hObject,'Value')} returns selected item from BW


% --- Executes during object creation, after setting all properties.
function BW_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in CP.
function CP_Callback(hObject, eventdata, handles)
% hObject    handle to CP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns CP contents as cell array
%        contents{get(hObject,'Value')} returns selected item from CP


% --- Executes during object creation, after setting all properties.
function CP_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in MCS.
function MCS_Callback(hObject, eventdata, handles)
% hObject    handle to MCS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns MCS contents as cell array
%        contents{get(hObject,'Value')} returns selected item from MCS


% --- Executes during object creation, after setting all properties.
function MCS_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MCS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in MIMO.
function MIMO_Callback(hObject, eventdata, handles)
% hObject    handle to MIMO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns MIMO contents as cell array
%        contents{get(hObject,'Value')} returns selected item from MIMO


% --- Executes during object creation, after setting all properties.
function MIMO_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MIMO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in CA.
function CA_Callback(hObject, eventdata, handles)
% hObject    handle to CA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns CA contents as cell array
%        contents{get(hObject,'Value')} returns selected item from CA


% --- Executes during object creation, after setting all properties.
function CA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in CALCULAR.
function CALCULAR_Callback(hObject, eventdata, handles)
% hObject    handle to CALCULAR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%callback de BW

bw = get(handles.BW,'Value'); 
if bw == 2;       % BW = 1.4 MHz
   prb = 6;           % Numero de prbSs

elseif bw == 3;   % BW = 3 MHz
    prb = 15;  
    
elseif bw == 4;   % BW = 5 MHz
    prb = 25;
    
elseif bw == 5;   % BW = 10 MHz
    prb = 50;
    
elseif bw == 6;   % BW = 15 MHz
    prb = 75;
    
elseif bw == 7;   % BW = 20 MHz
    prb = 100;
    
end
handles.prb = prb;          
guidata(hObject,handles);   

%callback de CP


cp=get(handles.CP,'Value');

if cp == 2;             %CP = NORMAL
   re=7*12;                 %Calcula o numero de RE
   in_cp=7;                    %Salva o valor de simbolos do prefixo ciclico
   fator=1;                 %Fator = 1 para CP normal (sem alteração na tabela)
    
   
elseif cp == 3;         %CP = EXTENDIDO
    re=6*12;                %Calcula o numero de resource elements
    in_cp=6;                   %Salva o valor de simbolos do prefixo ciclico     
    fator=0.857;            %Fator = 0.857 para CP extendido (alteração na tabela)
end

handles.in_cp2=in_cp;
handles.re=re;
guidata(hObject,handles);

%callback MCS

mcs=get(handles.MCS,'Value');

if mcs == 2;            %MCS = 0     
        tbs = 0;
        mod = 'QPSK';     
        bits_per_symbol = 2;
        cod=0.1171875;
    elseif mcs == 3;        %MCS = 1       
        tbs = 1;
        mod = 'QPSK'; 
        bits_per_symbol = 2;
        cod=0.15332031;
    elseif mcs == 4;        %MCS = 2  
        tbs = 2;
        mod = 'QPSK';
        bits_per_symbol = 2;
        cod=0.18847656;
    elseif mcs == 5;        %MCS = 3  
        tbs = 3;
        mod = 'QPSK';     
        bits_per_symbol = 2;
        cod=0.24511719;
    elseif mcs == 6;        %MCS = 4     
        tbs = 4;
        mod = 'QPSK';
        bits_per_symbol = 2;
        cod=0.3007125;
    elseif mcs == 7;        %MCS = 5     
        tbs = 5;
        mod = 'QPSK';    
        bits_per_symbol = 2;
        cod=0.37011719;
    elseif mcs == 8;        %MCS = 6     
        tbs = 6;
        mod = 'QPSK';    
        bits_per_symbol = 2;
        cod=0.43847656;
    elseif mcs == 9;        %MCS = 7     
        tbs = 7;
        mod = 'QPSK';    
        bits_per_symbol = 2;
        cod=0.51367188;
    elseif mcs == 10;        %MCS = 8     
        tbs = 8;
        mod = 'QPSK';    
        bits_per_symbol = 2;
        cod=0.58789063;
    elseif mcs == 11;        %MCS = 9     
        tbs = 9;
        mod = 'QPSK';    
        bits_per_symbol = 2;
        cod=0.66308594;
    elseif mcs == 12;        %MCS = 10    
        tbs = 9;
        mod = '16 QAM';    
        bits_per_symbol = 4;
        cod=0.33203125;
    elseif mcs == 13;        %MCS = 11    
        tbs = 10;
        mod = '16 QAM';   
        bits_per_symbol = 4;
        cod=0.36914063;
    elseif mcs == 14;        %MCS = 12    
        tbs = 11;
        mod = '16 QAM';    
        bits_per_symbol = 4;
        cod=0.42382813;
    elseif mcs == 15;        %MCS = 13    
        tbs = 12;
        mod = '16 QAM';    
        bits_per_symbol = 4;
        cod=0.47851563;
    elseif mcs == 16;        %MCS = 14    
        tbs = 13;
        mod = '16 QAM';   
        bits_per_symbol = 4;
        cod=0.54003906;
    elseif mcs == 17;        %MCS = 15    
        tbs = 14;
        mod = '16 QAM';   
        bits_per_symbol = 4;
        cod=0.6015625;
    elseif mcs == 18;        %MCS = 16    
        tbs = 15;
        mod = '16 QAM';   
        bits_per_symbol = 4;
        cod=0.64257813;
    elseif mcs == 19;        %MCS = 17    
        tbs = 15;
        mod = '64 QAM';    
        bits_per_symbol = 6;
        cod=0.42773438;
    elseif mcs == 20;        %MCS = 18    
        tbs = 16;
        mod = '64 QAM';   
        bits_per_symbol = 6;
        cod=0.45507813;
    elseif mcs == 21;        %MCS = 19    
        tbs = 17;
        mod = '64 QAM';    
        bits_per_symbol = 6;
        cod=0.50488281;
    elseif mcs == 22;        %MCS = 20    
        tbs = 18;
        mod = '64 QAM';   
        bits_per_symbol = 6;
        cod=0.55371094;
    elseif mcs == 23;        %MCS = 21    
        tbs = 19;
        mod = '64 QAM';    
        bits_per_symbol = 6;
        cod=0.6015625;
    elseif mcs == 24;        %MCS = 22    
        tbs = 20;
        mod = '64 QAM';    
        bits_per_symbol = 6;
        cod=0.65039063;
    elseif mcs == 25;        %MCS = 23    
        tbs = 21;
        mod = '64 QAM';    
        bits_per_symbol = 6;
        cod=0.70214844;
    elseif mcs == 26;        %MCS = 24    
        tbs = 22;
        mod = '64 QAM';  
        bits_per_symbol = 6;
        cod=0.75390625
    elseif mcs == 27;        %MCS = 25    
        tbs = 23;
        mod = '64 QAM';    
        bits_per_symbol = 6;
        cod=0.80273438;
    elseif mcs == 28;        %MCS = 26    
        tbs = 24;
        mod = '64 QAM';    
        bits_per_symbol = 6;
        cod=0.85253906;
    elseif mcs == 29;        %MCS = 27    
        tbs = 25;
        mod = '64 QAM';    
        bits_per_symbol = 6;
        cod=0.88867188;
    elseif mcs == 30;        %MCS = 28    
        tbs = 26;
        mod = '64 QAM';    
        bits_per_symbol = 6;
        cod=0.92578125;
    end
%handles.mcs = mcs;  
handles.tbs = tbs; 
handles.mod = mod;
handles.cod = cod;
handles.bits_per_symbol = bits_per_symbol;
guidata(hObject,handles);

%callback MIMO

mimo = get(handles.MIMO,'Value'); 

if mimo == 2;                %SEM MIMO
    schema_mimo=1;
        
    elseif mimo == 3;        %MIMO 2x2     
    schema_mimo=2; 
        
    elseif mimo == 4;        %MIMO 4x4
    schema_mimo=4; 
        
    elseif mimo == 5;        %MIMO 8x8 
    schema_mimo=8; 
          
end

tabela=fator.*[16, 32, 56, 88, 120, 152, 176, 208, 224, 256, 288, 328, 344, 376, 392, 424, 456, 488, 504, 536, 568, 600, 616, 648, 680, 712, 744, 776, 776, 808, 840, 872, 904, 936, 968, 1000, 1032, 1032, 1064, 1096, 1128, 1160, 1192, 1224, 1256, 1256, 1288, 1320, 1352, 1384, 1416, 1416, 1480, 1480, 1544, 1544, 1608, 1608, 1608, 1672, 1672, 1736, 1736, 1800, 1800, 1800, 1864, 1864, 1928, 1928, 1992, 1992, 2024, 2088, 2088, 2088, 2152, 2152, 2216, 2216, 2280, 2280, 2280, 2344, 2344, 2408, 2408, 2472, 2472, 2536, 2536, 2536, 2600, 2600, 2664, 2664, 2728, 2728, 2728, 2792;
        24, 56, 88, 144, 176, 208, 224, 256, 328, 344, 376, 424, 456, 488, 520, 568, 600, 632, 680, 712, 744, 776, 808, 872, 904, 936, 968, 1000, 1032, 1064, 1128, 1160, 1192, 1224, 1256, 1288, 1352, 1384, 1416, 1416, 1480, 1544, 1544, 1608, 1608, 1672, 1736, 1736, 1800, 1800, 1864, 1864, 1928, 1992, 1992, 2024, 2088, 2088, 2152, 2152, 2216, 2280, 2280, 2344, 2344, 2408, 2472, 2472, 2536, 2536, 2600, 2600, 2664, 2728, 2728, 2792, 2792, 2856, 2856, 2856, 2984, 2984, 2984, 3112, 3112, 3112, 3240, 3240, 3240, 3240, 3368, 3368, 3368, 3496, 3496, 3496, 3496, 3624, 3624, 3624;
        32, 72, 144, 176, 208, 256, 296, 328, 376, 424, 472, 520, 568, 616, 648, 696, 744, 776, 840, 872, 936, 968, 1000, 1064, 1096, 1160, 1192, 1256, 1288, 1320, 1384, 1416, 1480, 1544, 1544, 1608, 1672, 1672, 1736, 1800, 1800, 1864, 1928, 1992, 2024, 2088, 2088, 2152, 2216, 2216, 2280, 2344, 2344, 2408, 2472, 2536, 2536, 2600, 2664, 2664, 2728, 2792, 2856, 2856, 2856, 2984, 2984, 3112, 3112, 3112, 3240, 3240, 3240, 3368, 3368, 3368, 3496, 3496, 3496, 3624, 3624, 3624, 3752, 3752, 3880, 3880, 3880, 4008, 4008, 4008, 4136, 4136, 4136, 4264, 4264, 4264, 4392, 4392, 4392, 4584;
        40, 104, 176, 208, 256, 328, 392, 440, 504, 568, 616, 680, 744, 808, 872, 904, 968, 1032, 1096, 1160, 1224, 1256, 1320, 1384, 1416, 1480, 1544, 1608, 1672, 1736, 1800, 1864, 1928, 1992, 2024, 2088, 2152, 2216, 2280, 2344, 2408, 2472, 2536, 2536, 2600, 2664, 2728, 2792, 2856, 2856, 2984, 2984, 3112, 3112, 3240, 3240, 3368, 3368, 3496, 3496, 3624, 3624, 3624, 3752, 3752, 3880, 3880, 4008, 4008, 4136, 4136, 4264, 4264, 4392, 4392, 4392, 4584, 4584, 4584, 4776, 4776, 4776, 4776, 4968, 4968, 4968, 5160, 5160, 5160, 5352, 5352, 5352, 5352, 5544, 5544, 5544, 5736, 5736, 5736, 5736;
        56, 120, 208, 256, 328, 408, 488, 552, 632, 696, 776, 840, 904, 1000, 1064, 1128, 1192, 1288, 1352, 1416, 1480, 1544, 1608, 1736, 1800, 1864, 1928, 1992, 2088, 2152, 2216, 2280, 2344, 2408, 2472, 2600, 2664, 2728, 2792, 2856, 2984, 2984, 3112, 3112, 3240, 3240, 3368, 3496, 3496, 3624, 3624, 3752, 3752, 3880, 4008, 4008, 4136, 4136, 4264, 4264, 4392, 4392, 4584, 4584, 4584, 4776, 4776, 4968, 4968, 4968, 5160, 5160, 5160, 5352, 5352, 5544, 5544, 5544, 5736, 5736, 5736, 5992, 5992, 5992, 5992, 6200, 6200, 6200, 6456, 6456, 6456, 6456, 6712, 6712, 6712, 6968, 6968, 6968, 6968, 7224;
        72, 144, 224, 328, 424, 504, 600, 680, 776, 872, 968, 1032, 1128, 1224, 1320, 1384, 1480, 1544, 1672, 1736, 1864, 1928, 2024, 2088, 2216, 2280, 2344, 2472, 2536, 2664, 2728, 2792, 2856, 2984, 3112, 3112, 3240, 3368, 3496, 3496, 3624, 3752, 3752, 3880, 4008, 4008, 4136, 4264, 4392, 4392, 4584, 4584, 4776, 4776, 4776, 4968, 4968, 5160, 5160, 5352, 5352, 5544, 5544, 5736, 5736, 5736, 5992, 5992, 5992, 6200, 6200, 6200, 6456, 6456, 6712, 6712, 6712, 6968, 6968, 6968, 7224, 7224, 7224, 7480, 7480, 7480, 7736, 7736, 7736, 7992, 7992, 7992, 8248, 8248, 8248, 8504, 8504, 8760, 8760, 8760;
        328, 176, 256, 392, 504, 600, 712, 808, 936, 1032, 1128, 1224, 1352, 1480, 1544, 1672, 1736, 1864, 1992, 2088, 2216, 2280, 2408, 2472, 2600, 2728, 2792, 2984, 2984, 3112, 3240, 3368, 3496, 3496, 3624, 3752, 3880, 4008, 4136, 4136, 4264, 4392, 4584, 4584, 4776, 4776, 4968, 4968, 5160, 5160, 5352, 5352, 5544, 5736, 5736, 5992, 5992, 5992, 6200, 6200, 6456, 6456, 6456, 6712, 6712, 6968, 6968, 6968, 7224, 7224, 7480, 7480, 7736, 7736, 7736, 7992, 7992, 8248, 8248, 8248, 8504, 8504, 8760, 8760, 8760, 9144, 9144, 9144, 9144, 9528, 9528, 9528, 9528, 9912, 9912, 9912, 10296, 10296, 10296, 10296;
        104, 224, 328, 472, 584, 712, 840, 968, 1096, 1224, 1320, 1480, 1608, 1672, 1800, 1928, 2088, 2216, 2344, 2472, 2536, 2664, 2792, 2984, 3112, 3240, 3368, 3368, 3496, 3624, 3752, 3880, 4008, 4136, 4264, 4392, 4584, 4584, 4776, 4968, 4968, 5160, 5352, 5352, 5544, 5736, 5736, 5992, 5992, 6200, 6200, 6456, 6456, 6712, 6712, 6712, 6968, 6968, 7224, 7224, 7480, 7480, 7736, 7736, 7992, 7992, 8248, 8248, 8504, 8504, 8760, 8760, 8760, 9144, 9144, 9144, 9528, 9528, 9528, 9912, 9912, 9912, 10296, 10296, 10296, 10680, 10680, 10680, 11064, 11064, 11064, 11448, 11448, 11448, 11448, 11832, 11832, 11832, 12216, 12216;
        120, 256, 392, 536, 680, 808, 968, 1096, 1256, 1384, 1544, 1672, 1800, 1928, 2088, 2216, 2344, 2536, 2664, 2792, 2984, 3112, 3240, 3368, 3496, 3624, 3752, 3880, 4008, 4264, 4392, 4584, 4584, 4776, 4968, 4968, 5160, 5352, 5544, 5544, 5736, 5992, 5992, 6200, 6200, 6456, 6456, 6712, 6968, 6968, 7224, 7224, 7480, 7480, 7736, 7736, 7992, 7992, 8248, 8504, 8504, 8760, 8760, 9144, 9144, 9144, 9528, 9528, 9528, 9912, 9912, 9912, 10296, 10296, 10680, 10680, 10680, 11064, 11064, 11064, 11448, 11448, 11448, 11832, 11832, 12216, 12216, 12216, 12576, 12576, 12576, 12960, 12960, 12960, 13536, 13536, 13536, 13536, 14112, 14112;
        136, 296, 456, 616, 776, 936, 1096, 1256, 1416, 1544, 1736, 1864, 2024, 2216, 2344, 2536, 2664, 2856, 2984, 3112, 3368, 3496, 3624, 3752, 4008, 4136, 4264, 4392, 4584, 4776, 4968, 5160, 5160, 5352, 5544, 5736, 5736, 5992, 6200, 6200, 6456, 6712, 6712, 6968, 6968, 7224, 7480, 7480, 7736, 7992, 7992, 8248, 8248, 8504, 8760, 8760, 9144, 9144, 9144, 9528, 9528, 9912, 9912, 10296, 10296, 10296, 10680, 10680, 11064, 11064, 11064, 11448, 11448, 11832, 11832, 11832, 12216, 12216, 12576, 12576, 12960, 12960, 12960, 13536, 13536, 13536, 13536, 14112, 14112, 14112, 14112, 14688, 14688, 14688, 15264, 15264, 15264, 15264, 15840, 15840;
        144, 328, 504, 680, 872, 1032, 1224, 1384, 1544, 1736, 1928, 2088, 2280, 2472, 2664, 2792, 2984, 3112, 3368, 3496, 3752, 3880, 4008, 4264, 4392, 4584, 4776, 4968, 5160, 5352, 5544, 5736, 5736, 5992, 6200, 6200, 6456, 6712, 6712, 6968, 7224, 7480, 7480, 7736, 7992, 7992, 8248, 8504, 8504, 8760, 9144, 9144, 9144, 9528, 9528, 9912, 9912, 10296, 10296, 10680, 10680, 11064, 11064, 11448, 11448, 11448, 11832, 11832, 12216, 12216, 12576, 12576, 12960, 12960, 12960, 13536, 13536, 13536, 14112, 14112, 14112, 14688, 14688, 14688, 14688, 15264, 15264, 15264, 15840, 15840, 15840, 16416, 16416, 16416, 16992, 16992, 16992, 16992, 17568, 17568;
        176, 376, 584, 776, 1000, 1192, 1384, 1608, 1800, 2024, 2216, 2408, 2600, 2792, 2984, 3240, 3496, 3624, 3880, 4008, 4264, 4392, 4584, 4776, 4968, 5352, 5544, 5736, 5992, 5992, 6200, 6456, 6712, 6968, 6968, 7224, 7480, 7736, 7736, 7992, 8248, 8504, 8760, 8760, 9144, 9144, 9528, 9528, 9912, 9912, 10296, 10680, 10680, 11064, 11064, 11448, 11448, 11832, 11832, 12216, 12216, 12576, 12576, 12960, 12960, 13536, 13536, 13536, 14112, 14112, 14112, 14688, 14688, 14688, 15264, 15264, 15840, 15840, 15840, 16416, 16416, 16416, 16992, 16992, 16992, 17568, 17568, 17568, 18336, 18336, 18336, 18336, 19080, 19080, 19080, 19080, 19848, 19848, 19848, 19848;
        208, 440, 680, 904, 1128, 1352, 1608, 1800, 2024, 2280, 2472, 2728, 2984, 3240, 3368, 3624, 3880, 4136, 4392, 4584, 4776, 4968, 5352, 5544, 5736, 5992, 6200, 6456, 6712, 6712, 6968, 7224, 7480, 7736, 7992, 8248, 8504, 8760, 8760, 9144, 9528, 9528, 9912, 9912, 10296, 10680, 10680, 11064, 11064, 11448, 11832, 11832, 12216, 12216, 12576, 12576, 12960, 12960, 13536, 13536, 14112, 14112, 14112, 14688, 14688, 15264, 15264, 15264, 15840, 15840, 16416, 16416, 16416, 16992, 16992, 17568, 17568, 17568, 18336, 18336, 18336, 19080, 19080, 19080, 19080, 19848, 19848, 19848, 20616, 20616, 20616, 21384, 21384, 21384, 21384, 22152, 22152, 22152, 22920, 22920;
        224, 488, 744, 1000, 1256, 1544, 1800, 2024, 2280, 2536, 2856, 3112, 3368, 3624, 3880, 4136, 4392, 4584, 4968, 5160, 5352, 5736, 5992, 6200, 6456, 6712, 6968, 7224, 7480, 7736, 7992, 8248, 8504, 8760, 9144, 9144, 9528, 9912, 9912, 10296, 10680, 10680, 11064, 11448, 11448, 11832, 12216, 12216, 12576, 12960, 12960, 13536, 13536, 14112, 14112, 14688, 14688, 14688, 15264, 15264, 15840, 15840, 16416, 16416, 16992, 16992, 16992, 17568, 17568, 18336, 18336, 18336, 19080, 19080, 19080, 19848, 19848, 19848, 20616, 20616, 20616, 21384, 21384, 21384, 22152, 22152, 22152, 22920, 22920, 22920, 23688, 23688, 23688, 24496, 24496, 24496, 25456, 25456, 25456, 25456;
        256, 552, 840, 1128, 1416, 1736, 1992, 2280, 2600, 2856, 3112, 3496, 3752, 4008, 4264, 4584, 4968, 5160, 5544, 5736, 5992, 6200, 6456, 6968, 7224, 7480, 7736, 7992, 8248, 8504, 8760, 9144, 9528, 9912, 9912, 10296, 10680, 11064, 11064, 11448, 11832, 12216, 12216, 12576, 12960, 12960, 13536, 13536, 14112, 14112, 14688, 14688, 15264, 15264, 15840, 15840, 16416, 16416, 16992, 16992, 17568, 17568, 18336, 18336, 18336, 19080, 19080, 19848, 19848, 19848, 20616, 20616, 20616, 21384, 21384, 22152, 22152, 22152, 22920, 22920, 22920, 23688, 23688, 24496, 24496, 24496, 25456, 25456, 25456, 25456, 26416, 26416, 26416, 27376, 27376, 27376, 28336, 28336, 28336, 28336;
        280, 600, 904, 1224, 1544, 1800, 2152, 2472, 2728, 3112, 3368, 3624, 4008, 4264, 4584, 4968, 5160, 5544, 5736, 6200, 6456, 6712, 6968, 7224, 7736, 7992, 8248, 8504, 8760, 9144, 9528, 9912, 10296, 10296, 10680, 11064, 11448, 11832, 11832, 12216, 12576, 12960, 12960, 13536, 13536, 14112, 14688, 14688, 15264, 15264, 15840, 15840, 16416, 16416, 16992, 16992, 17568, 17568, 18336, 18336, 18336, 19080, 19080, 19848, 19848, 20616, 20616, 20616, 21384, 21384, 22152, 22152, 22152, 22920, 22920, 23688, 23688, 23688, 24496, 24496, 24496, 25456, 25456, 25456, 26416, 26416, 26416, 27376, 27376, 27376, 28336, 28336, 28336, 29296, 29296, 29296, 29296, 30576, 30576, 30576;
        328, 632, 968, 1288, 1608, 1928, 2280, 2600, 2984, 3240, 3624, 3880, 4264, 4584, 4968, 5160, 5544, 5992, 6200, 6456, 6712, 7224, 7480, 7736, 7992, 8504, 8760, 9144, 9528, 9912, 9912, 10296, 10680, 11064, 11448, 11832, 12216, 12216, 12576, 12960, 13536, 13536, 14112, 14112, 14688, 14688, 15264, 15840, 15840, 16416, 16416, 16992, 16992, 17568, 17568, 18336, 18336, 19080, 19080, 19848, 19848, 19848, 20616, 20616, 21384, 21384, 22152, 22152, 22152, 22920, 22920, 23688, 23688, 24496, 24496, 24496, 25456, 25456, 25456, 26416, 26416, 26416, 27376, 27376, 27376, 28336, 28336, 28336, 29296, 29296, 29296, 30576, 30576, 30576, 30576, 31704, 31704, 31704, 31704, 32856;
        336, 696, 1064, 1416, 1800, 2152, 2536, 2856, 3240, 3624, 4008, 4392, 4776, 5160, 5352, 5736, 6200, 6456, 6712, 7224, 7480, 7992, 8248, 8760, 9144, 9528, 9912, 10296, 10296, 10680, 11064, 11448, 11832, 12216, 12576, 12960, 13536, 13536, 14112, 14688, 14688, 15264, 15264, 15840, 16416, 16416, 16992, 17568, 17568, 18336, 18336, 19080, 19080, 19848, 19848, 20616, 20616, 20616, 21384, 21384, 22152, 22152, 22920, 22920, 23688, 23688, 24496, 24496, 24496, 25456, 25456, 26416, 26416, 26416, 27376, 27376, 27376, 28336, 28336, 29296, 29296, 29296, 30576, 30576, 30576, 30576, 31704, 31704, 31704, 32856, 32856, 32856, 34008, 34008, 34008, 35160, 35160, 35160, 35160, 36696;
        376, 776, 1160, 1544, 1992, 2344, 2792, 3112, 3624, 4008, 4392, 4776, 5160, 5544, 5992, 6200, 6712, 7224, 7480, 7992, 8248, 8760, 9144, 9528, 9912, 10296, 10680, 11064, 11448, 11832, 12216, 12576, 12960, 13536, 14112, 14112, 14688, 15264, 15264, 15840, 16416, 16416, 16992, 17568, 17568, 18336, 18336, 19080, 19080, 19848, 19848, 20616, 21384, 21384, 22152, 22152, 22920, 22920, 23688, 23688, 24496, 24496, 24496, 25456, 25456, 26416, 26416, 27376, 27376, 27376, 28336, 28336, 29296, 29296, 29296, 30576, 30576, 30576, 31704, 31704, 31704, 32856, 32856, 32856, 34008, 34008, 34008, 35160, 35160, 35160, 36696, 36696, 36696, 37888, 37888, 37888, 37888, 39232, 39232, 39232;
        408, 840, 1288, 1736, 2152, 2600, 2984, 3496, 3880, 4264, 4776, 5160, 5544, 5992, 6456, 6968, 7224, 7736, 8248, 8504, 9144, 9528, 9912, 10296, 10680, 11064, 11448, 12216, 12576, 12960, 13536, 13536, 14112, 14688, 15264, 15264, 15840, 16416, 16992, 16992, 17568, 18336, 18336, 19080, 19080, 19848, 20616, 20616, 21384, 21384, 22152, 22152, 22920, 22920, 23688, 24496, 24496, 25456, 25456, 25456, 26416, 26416, 27376, 27376, 28336, 28336, 29296, 29296, 29296, 30576, 30576, 30576, 31704, 31704, 32856, 32856, 32856, 34008, 34008, 34008, 35160, 35160, 35160, 36696, 36696, 36696, 37888, 37888, 37888, 39232, 39232, 39232, 40576, 40576, 40576, 40576, 42368, 42368, 42368, 43816;
        440, 904, 1384, 1864, 2344, 2792, 3240, 3752, 4136, 4584, 5160, 5544, 5992, 6456, 6968, 7480, 7992, 8248, 8760, 9144, 9912, 10296, 10680, 11064, 11448, 12216, 12576, 12960, 13536, 14112, 14688, 14688, 15264, 15840, 16416, 16992, 16992, 17568, 18336, 18336, 19080, 19848, 19848, 20616, 20616, 21384, 22152, 22152, 22920, 22920, 23688, 24496, 24496, 25456, 25456, 26416, 26416, 27376, 27376, 28336, 28336, 29296, 29296, 29296, 30576, 30576, 31704, 31704, 31704, 32856, 32856, 34008, 34008, 34008, 35160, 35160, 35160, 36696, 36696, 36696, 37888, 37888, 39232, 39232, 39232, 40576, 40576, 40576, 42368, 42368, 42368, 42368, 43816, 43816, 43816, 45352, 45352, 45352, 46888, 46888;
        488, 1000, 1480, 1992, 2472, 2984, 3496, 4008, 4584, 4968, 5544, 5992, 6456, 6968, 7480, 7992, 8504, 9144, 9528, 9912, 10680, 11064, 11448, 12216, 12576, 12960, 13536, 14112, 14688, 15264, 15840, 15840, 16416, 16992, 17568, 18336, 18336, 19080, 19848, 19848, 20616, 21384, 21384, 22152, 22920, 22920, 23688, 24496, 24496, 25456, 25456, 26416, 26416, 27376, 27376, 28336, 28336, 29296, 29296, 30576, 30576, 31704, 31704, 31704, 32856, 32856, 34008, 34008, 35160, 35160, 35160, 36696, 36696, 36696, 37888, 37888, 39232, 39232, 39232, 40576, 40576, 40576, 42368, 42368, 42368, 43816, 43816, 43816, 45352, 45352, 45352, 46888, 46888, 46888, 46888, 48936, 48936, 48936, 48936, 51024;
        520, 1064, 1608, 2152, 2664, 3240, 3752, 4264, 4776, 5352, 5992, 6456, 6968, 7480, 7992, 8504, 9144, 9528, 10296, 10680, 11448, 11832, 12576, 12960, 13536, 14112, 14688, 15264, 15840, 16416, 16992, 16992, 17568, 18336, 19080, 19080, 19848, 20616, 21384, 21384, 22152, 22920, 22920, 23688, 24496, 24496, 25456, 25456, 26416, 27376, 27376, 28336, 28336, 29296, 29296, 30576, 30576, 31704, 31704, 32856, 32856, 34008, 34008, 34008, 35160, 35160, 36696, 36696, 36696, 37888, 37888, 39232, 39232, 40576, 40576, 40576, 42368, 42368, 42368, 43816, 43816, 43816, 45352, 45352, 45352, 46888, 46888, 46888, 48936, 48936, 48936, 48936, 51024, 51024, 51024, 51024, 52752, 52752, 52752, 55056;
        552, 1128, 1736, 2280, 2856, 3496, 4008, 4584, 5160, 5736, 6200, 6968, 7480, 7992, 8504, 9144, 9912, 10296, 11064, 11448, 12216, 12576, 12960, 13536, 14112, 14688, 15264, 15840, 16416, 16992, 17568, 18336, 19080, 19848, 19848, 20616, 21384, 22152, 22152, 22920, 23688, 24496, 24496, 25456, 25456, 26416, 27376, 27376, 28336, 28336, 29296, 29296, 30576, 30576, 31704, 31704, 32856, 32856, 34008, 34008, 35160, 35160, 36696, 36696, 37888, 37888, 37888, 39232, 39232, 40576, 40576, 40576, 42368, 42368, 43816, 43816, 43816, 45352, 45352, 45352, 46888, 46888, 46888, 48936, 48936, 48936, 51024, 51024, 51024, 51024, 52752, 52752, 52752, 55056, 55056, 55056, 55056, 57336, 57336, 57336;
        584, 1192, 1800, 2408, 2984, 3624, 4264, 4968, 5544, 5992, 6712, 7224, 7992, 8504, 9144, 9912, 10296, 11064, 11448, 12216, 12960, 13536, 14112, 14688, 15264, 15840, 16416, 16992, 17568, 18336, 19080, 19848, 19848, 20616, 21384, 22152, 22920, 22920, 23688, 24496, 25456, 25456, 26416, 26416, 27376, 28336, 28336, 29296, 29296, 30576, 31704, 31704, 32856, 32856, 34008, 34008, 35160, 35160, 36696, 36696, 36696, 37888, 37888, 39232, 39232, 40576, 40576, 42368, 42368, 42368, 43816, 43816, 45352, 45352, 45352, 46888, 46888, 46888, 48936, 48936, 48936, 51024, 51024, 51024, 52752, 52752, 52752, 52752, 55056, 55056, 55056, 57336, 57336, 57336, 57336, 59256, 59256, 59256, 61664, 61664;
        616, 1256, 1864, 2536, 3112, 3752, 4392, 5160, 5736, 6200, 6968, 7480, 8248, 8760, 9528, 10296, 10680, 11448, 12216, 12576, 13536, 14112, 14688, 15264, 15840, 16416, 16992, 17568, 18336, 19080, 19848, 20616, 20616, 21384, 22152, 22920, 23688, 24496, 24496, 25456, 26416, 26416, 27376, 28336, 28336, 29296, 29296, 30576, 31704, 31704, 32856, 32856, 34008, 34008, 35160, 35160, 36696, 36696, 37888, 37888, 39232, 39232, 40576, 40576, 40576, 42368, 42368, 43816, 43816, 43816, 45352, 45352, 46888, 46888, 46888, 48936, 48936, 48936, 51024, 51024, 51024, 52752, 52752, 52752, 55056, 55056, 55056, 55056, 57336, 57336, 57336, 59256, 59256, 59256, 61664, 61664, 61664, 61664, 63776, 63776;
        712, 1480, 2216, 2984, 3752, 4392, 5160, 5992, 6712, 7480, 8248, 8760, 9528, 10296, 11064, 11832, 12576, 13536, 14112, 14688, 15264, 16416, 16992, 17568, 18336, 19080, 19848, 20616, 21384, 22152, 22920, 23688, 24496, 25456, 25456, 26416, 27376, 28336, 29296, 29296, 30576, 30576, 31704, 32856, 32856, 34008, 35160, 35160, 36696, 36696, 37888, 37888, 39232, 40576, 40576, 40576, 42368, 42368, 43816, 43816, 45352, 45352, 46888, 46888, 48936, 48936, 48936, 51024, 51024, 52752, 52752, 52752, 55056, 55056, 55056, 55056, 57336, 57336, 57336, 59256, 59256, 59256, 61664, 61664, 61664, 63776, 63776, 63776, 66592, 66592, 66592, 68808, 68808, 68808, 71112, 71112, 71112, 73712, 73712, 75376]; %26
 handles.PTX=schema_mimo;
 l=handles.tbs+1;
 c=handles.prb;
 handles.mimo = mimo;
 handles.tbs_index=tabela(l,c);
 guidata(hObject,handles);
  
  
  %callback CA
  
  ca = get(handles.CA,'Value'); 

if ca == 2;                %Carrier Aggregation = 1
    V_ca=1;
        
    elseif ca == 3;        %Carrier Aggregation = 2    
    V_ca=2; 
        
    elseif ca == 4;        %Carrier Aggregation = 3
    V_ca=3; 
        
    elseif ca == 5;       %Carrier Aggregation = 4
    V_ca=4; 
     
    elseif ca == 6;       %Carrier Aggregation = 5
    V_ca=5;
end
handles.ca_index=V_ca;
guidata(hObject,handles);


%Parametros de saída

set(handles.PRB, 'String', handles.prb );
set(handles.TBS_INDEX, 'String', handles.tbs ); 
set(handles.VALOR_TBS, 'String', handles.tbs_index );               
set(handles.MODULACAO, 'String', handles.mod );    
set(handles.NRE, 'String', handles.re );                   
set(handles.QTD_SIMBOLOS, 'String', handles.in_cp2 );                   

           
%Parametros Calculados
throughput_table=handles.tbs_index.*handles.ca_index.*handles.PTX/1000;
set(handles.SAIDA_TB, 'String',throughput_table);
throughput_equation=(schema_mimo*prb*in_cp*12*bits_per_symbol*0.75*V_ca*cod)/(0.5*10^(-3));% 25% de overhead com 12 subportadoras
throughput_equation=throughput_equation*10^(-6);
set(handles.SAIDA_EQ, 'String',throughput_equation);

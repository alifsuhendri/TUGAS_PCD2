function varargout = Henry_GUI(varargin)
% HENRY_GUI MATLAB code for Henry_GUI.fig
%      HENRY_GUI, by itself, creates a new HENRY_GUI or raises the existing
%      singleton*.
%
%      H = HENRY_GUI returns the handle to a new HENRY_GUI or the handle to
%      the existing singleton*.
%
%      HENRY_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HENRY_GUI.M with the given input arguments.
%
%      HENRY_GUI('Property','Value',...) creates a new HENRY_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Henry_GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Henry_GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Henry_GUI

% Last Modified by GUIDE v2.5 08-Sep-2021 19:20:12

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Henry_GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @Henry_GUI_OutputFcn, ...
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


% --- Executes just before Henry_GUI is made visible.
function Henry_GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Henry_GUI (see VARARGIN)

% Choose default command line output for Henry_GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Henry_GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Henry_GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in asli.
function asli_Callback(hObject, eventdata, handles)
% hObject    handle to asli (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Gambar asli
a = imread ('Henry.jpg');
axes(handles.axes1)
imshow(a);
title('Henry Asli')


% --- Executes on button press in keabuan.
function keabuan_Callback(hObject, eventdata, handles)
% hObject    handle to keabuan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Dekomposisi keabuan
a = imread ('Henry.jpg');
a_keabuan = 0.4 * a(:,:,1) + 0.32 * a(:,:,2) + 0.28 * a(:,:,3);
axes(handles.axes2)
imshow(a_keabuan)
title('Henry Keabuan')

% --- Executes on button press in brightness.
function brightness_Callback(hObject, eventdata, handles)
% hObject    handle to brightness (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Brightness
a = imread ('Henry.jpg');
kecerahan = 85;
a_brightness = a + kecerahan;
axes(handles.axes3)
imshow(a_brightness)
title('Henry Brightness')

% --- Executes on button press in kontras.
function kontras_Callback(hObject, eventdata, handles)
% hObject    handle to kontras (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Kontras
a = imread ('Henry.jpg');
kontras = 1.5;
a_kontras = a * kontras;
axes(handles.axes4)
imshow(a_kontras)
title('Henry Kontras')

% --- Executes on button press in biner.
function biner_Callback(hObject, eventdata, handles)
% hObject    handle to biner (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Biner
a = imread ('Henry.jpg');
a_biner = im2bw (a, 0.4);
axes(handles.axes5)
imshow (a_biner)
title ('Henry Biner')

% --- Executes on button press in Keluar.
function Keluar_Callback(hObject, eventdata, handles)
% hObject    handle to Keluar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
delete(handles.figure1)
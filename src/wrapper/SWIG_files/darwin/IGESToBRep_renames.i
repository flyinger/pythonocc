/*

Copyright 2008-2014 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

*/
%rename(DownCast) Handle_IGESToBRep_AlgoContainer::DownCast;
%rename(DownCast) Handle_IGESToBRep_Actor::DownCast;
%rename(DownCast) Handle_IGESToBRep_IGESBoundary::DownCast;
%rename(DownCast) Handle_IGESToBRep_ToolContainer::DownCast;
%rename(Init) IGESToBRep::Init;
%rename(SetAlgoContainer) IGESToBRep::SetAlgoContainer;
%rename(AlgoContainer) IGESToBRep::AlgoContainer;
%rename(IsCurveAndSurface) IGESToBRep::IsCurveAndSurface;
%rename(IsBasicCurve) IGESToBRep::IsBasicCurve;
%rename(IsBasicSurface) IGESToBRep::IsBasicSurface;
%rename(IsTopoCurve) IGESToBRep::IsTopoCurve;
%rename(IsTopoSurface) IGESToBRep::IsTopoSurface;
%rename(IsBRepEntity) IGESToBRep::IsBRepEntity;
%rename(WriteShape) IGESToBRep::WriteShape;
%rename(IGESCurveToSequenceOfIGESCurve) IGESToBRep::IGESCurveToSequenceOfIGESCurve;
%rename(TransferPCurve) IGESToBRep::TransferPCurve;

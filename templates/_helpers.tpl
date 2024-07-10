{{/*
The truncates are to 55 because we may be adding some extra suffixes (i.e. -backend or -mds)
*/}}

{{/*
Expand the name of the chart.
*/}}
{{- define "dataclay-charts.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 55 | trimSuffix "-" }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "dataclay-charts.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 55 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "dataclay-charts.labels" -}}
helm.sh/chart: {{ include "dataclay-charts.chart" . }}
{{ include "dataclay-charts.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "dataclay-charts.selectorLabels" -}}
app.kubernetes.io/name: {{ include "dataclay-charts.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "dataclay-charts.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "dataclay-charts.name" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
Expand the name of the chart.
*/}}
{{- define "grafana-dashboard-uploader.name" -}}
{{ .Chart.Name }}
{{- end }}

{{/*
Create a default fully qualified app name.
*/}}
{{- define "grafana-dashboard-uploader.fullname" -}}
{{ .Release.Name }}-{{ .Chart.Name }}
{{- end }}

{{/*
Common labels for all resources.
*/}}
{{- define "grafana-dashboard-uploader.labels" -}}
app.kubernetes.io/name: {{ include "grafana-dashboard-uploader.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | default .Chart.Version }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/component: dashboard-uploader
{{- end }}

{{/*
Selector labels (used in matchLabels usually).
*/}}
{{- define "grafana-dashboard-uploader.selectorLabels" -}}
app.kubernetes.io/name: {{ include "grafana-dashboard-uploader.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

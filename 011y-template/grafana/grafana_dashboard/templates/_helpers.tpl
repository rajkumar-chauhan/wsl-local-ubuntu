{{/* Chart name */}}
{{- define "grafana-dashboard-uploader.name" -}}
{{ .Chart.Name }}
{{- end }}

{{/* Full name */}}
{{- define "grafana-dashboard-uploader.fullname" -}}
{{ .Release.Name }}-{{ .Chart.Name }}
{{- end }}

{{/* Labels */}}
{{- define "grafana-dashboard-uploader.labels" -}}
app.kubernetes.io/name: {{ include "grafana-dashboard-uploader.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | default .Chart.Version }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/component: dashboard-uploader
{{- end }}


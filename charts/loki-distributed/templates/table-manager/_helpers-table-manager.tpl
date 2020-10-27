{{/*
table-manager fullname
*/}}
{{- define "loki.tableManagerFullname" -}}
{{ include "loki.fullname" . }}-table-manager
{{- end }}

{{/*
table-manager common labels
*/}}
{{- define "loki.tableManagerLabels" -}}
{{ include "loki.labels" . }}
app.kubernetes.io/component: table-manager
{{- end }}

{{/*
table-manager selector labels
*/}}
{{- define "loki.tableManagerSelectorLabels" -}}
{{ include "loki.selectorLabels" . }}
app.kubernetes.io/component: table-manager
{{- end }}

{{/*
table-manager image
*/}}
{{- define "loki.tableManagerImage" -}}
{{- $dict := dict "loki" .Values.loki.image "service" .Values.tableManager.image "global" .Values.global.image "defaultVersion" .Chart.AppVersion -}}
{{- include "loki.lokiImage" $dict -}}
{{- end }}

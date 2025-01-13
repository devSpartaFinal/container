from django.contrib import admin
from chatbot.models import Documents


@admin.register(Documents)
class OfficialDocs(admin.ModelAdmin):
    list_display = ("category", "title", "title_no")
    # search_fields = ("title", "content")
    list_filter = ("title",)
    # date_hierarchy = "created_at"
    # ordering = ("-created_at",)

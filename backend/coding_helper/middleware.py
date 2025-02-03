from django.http import JsonResponse

class BlockDirectAccessMiddleware:
    def __init__(self, get_response):
        self.get_response = get_response

    def __call__(self, request):
        allowed_origins = [
            "http://localhost:3000",
            "http://localhost:8000",
            "http://localhost/api",
        ]
        allowed_path = "/verify-email/"
        referer = request.META.get("HTTP_REFERER", "")

        path = request.path
        
        if allowed_path in path:
            return self.get_response(request)

        # 만약 referer가 없거나, 허용된 출처에 포함되지 않으면 차단
        if not any(referer.startswith(origin) for origin in allowed_origins):
            return JsonResponse({"error": "Direct access to the API is not allowed."}, status=403)

        return self.get_response(request)

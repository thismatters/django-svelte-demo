from rest_framework.views import APIView
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response


class SgoodMixin:
    def get(self, request, *args, **kwargs):
        return Response({"sgood": True})


class RequiresAuthAPIView(APIView, SgoodMixin):
    permission_classes = (IsAuthenticated,)


class PublicAPIView(APIView, SgoodMixin):
    pass

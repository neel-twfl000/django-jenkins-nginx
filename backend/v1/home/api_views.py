from rest_framework.viewsets import ViewSet
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated
from rest_framework_simplejwt.tokens import RefreshToken

class HomeView(ViewSet):
    permission_classes = [IsAuthenticated]
    # authentication_classes = []
    
    def list(self, request):
        # r_token = RefreshToken.for_user(request.user)
        # data = {}
        # data["refresh_token"] = str(r_token)
        # data["access_token"] = str(r_token.access_token)
        # print(data['access_token'])
        return Response({"username":request.user.email})

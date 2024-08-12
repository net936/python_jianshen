# Create your views here.
from django.db import connection
from django.db.models import Q
from rest_framework.decorators import api_view, authentication_classes

from myapp.auth.authentication import AdminTokenAuthtication
from myapp.handler import APIResponse
from myapp.models import Teacher
from myapp.permission.permission import isDemoAdminUser
from myapp.serializers import TeacherSerializer
from myapp.utils import dict_fetchall


@api_view(['GET'])
def list_api(request):
    if request.method == 'GET':
        teachers = Teacher.objects.all().order_by('-create_time')
        serializer = TeacherSerializer(teachers, many=True)
        return APIResponse(code=0, msg='查询成功', data=serializer.data)

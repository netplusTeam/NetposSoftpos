.class public final Lio/netty/handler/codec/rtsp/RtspResponseStatuses;
.super Ljava/lang/Object;
.source "RtspResponseStatuses.java"


# static fields
.field public static final AGGREGATE_OPERATION_NOT_ALLOWED:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final BAD_GATEWAY:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final BAD_REQUEST:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final CONFERENCE_NOT_FOUND:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final CONTINUE:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final CREATED:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final DESTINATION_UNREACHABLE:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final FORBIDDEN:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final GATEWAY_TIMEOUT:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final GONE:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final HEADER_FIELD_NOT_VALID:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final INTERNAL_SERVER_ERROR:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final INVALID_RANGE:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final KEY_MANAGEMENT_FAILURE:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final LENGTH_REQUIRED:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final LOW_STORAGE_SPACE:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final METHOD_NOT_ALLOWED:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final METHOD_NOT_VALID:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final MOVED_PERMANENTLY:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final MOVED_TEMPORARILY:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final MULTIPLE_CHOICES:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final NOT_ACCEPTABLE:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final NOT_ENOUGH_BANDWIDTH:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final NOT_FOUND:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final NOT_IMPLEMENTED:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final NOT_MODIFIED:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final OK:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final ONLY_AGGREGATE_OPERATION_ALLOWED:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final OPTION_NOT_SUPPORTED:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final PARAMETER_IS_READONLY:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final PARAMETER_NOT_UNDERSTOOD:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final PAYMENT_REQUIRED:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final PRECONDITION_FAILED:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final PROXY_AUTHENTICATION_REQUIRED:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final REQUEST_ENTITY_TOO_LARGE:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final REQUEST_TIMEOUT:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final REQUEST_URI_TOO_LONG:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final RTSP_VERSION_NOT_SUPPORTED:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final SERVICE_UNAVAILABLE:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final SESSION_NOT_FOUND:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final UNAUTHORIZED:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final UNSUPPORTED_MEDIA_TYPE:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final UNSUPPORTED_TRANSPORT:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final USE_PROXY:Lio/netty/handler/codec/http/HttpResponseStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->CONTINUE:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->CONTINUE:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 33
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->OK:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->OK:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 38
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->CREATED:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->CREATED:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 43
    new-instance v0, Lio/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0xfa

    const-string v2, "Low on Storage Space"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->LOW_STORAGE_SPACE:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 49
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->MULTIPLE_CHOICES:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->MULTIPLE_CHOICES:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 54
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->MOVED_PERMANENTLY:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->MOVED_PERMANENTLY:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 59
    new-instance v0, Lio/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x12e

    const-string v2, "Moved Temporarily"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->MOVED_TEMPORARILY:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 64
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->NOT_MODIFIED:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->NOT_MODIFIED:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 69
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->USE_PROXY:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->USE_PROXY:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 74
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->BAD_REQUEST:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->BAD_REQUEST:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 79
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->UNAUTHORIZED:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->UNAUTHORIZED:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 84
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->PAYMENT_REQUIRED:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->PAYMENT_REQUIRED:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 89
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->FORBIDDEN:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->FORBIDDEN:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 94
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->NOT_FOUND:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->NOT_FOUND:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 99
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->METHOD_NOT_ALLOWED:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->METHOD_NOT_ALLOWED:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 104
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->NOT_ACCEPTABLE:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->NOT_ACCEPTABLE:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 109
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->PROXY_AUTHENTICATION_REQUIRED:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->PROXY_AUTHENTICATION_REQUIRED:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 115
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->REQUEST_TIMEOUT:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->REQUEST_TIMEOUT:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 120
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->GONE:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->GONE:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 125
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->LENGTH_REQUIRED:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->LENGTH_REQUIRED:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 130
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->PRECONDITION_FAILED:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->PRECONDITION_FAILED:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 135
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->REQUEST_ENTITY_TOO_LARGE:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->REQUEST_ENTITY_TOO_LARGE:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 140
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->REQUEST_URI_TOO_LONG:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->REQUEST_URI_TOO_LONG:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 145
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->UNSUPPORTED_MEDIA_TYPE:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->UNSUPPORTED_MEDIA_TYPE:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 150
    new-instance v0, Lio/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1c3

    const-string v2, "Parameter Not Understood"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->PARAMETER_NOT_UNDERSTOOD:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 156
    new-instance v0, Lio/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1c4

    const-string v2, "Conference Not Found"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->CONFERENCE_NOT_FOUND:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 162
    new-instance v0, Lio/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1c5

    const-string v2, "Not Enough Bandwidth"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->NOT_ENOUGH_BANDWIDTH:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 168
    new-instance v0, Lio/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1c6

    const-string v2, "Session Not Found"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->SESSION_NOT_FOUND:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 174
    new-instance v0, Lio/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1c7

    const-string v2, "Method Not Valid in This State"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->METHOD_NOT_VALID:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 180
    new-instance v0, Lio/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1c8

    const-string v2, "Header Field Not Valid for Resource"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->HEADER_FIELD_NOT_VALID:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 186
    new-instance v0, Lio/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1c9

    const-string v2, "Invalid Range"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->INVALID_RANGE:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 192
    new-instance v0, Lio/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1ca

    const-string v2, "Parameter Is Read-Only"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->PARAMETER_IS_READONLY:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 198
    new-instance v0, Lio/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1cb

    const-string v2, "Aggregate operation not allowed"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->AGGREGATE_OPERATION_NOT_ALLOWED:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 204
    new-instance v0, Lio/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1cc

    const-string v2, "Only Aggregate operation allowed"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->ONLY_AGGREGATE_OPERATION_ALLOWED:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 210
    new-instance v0, Lio/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1cd

    const-string v2, "Unsupported transport"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->UNSUPPORTED_TRANSPORT:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 216
    new-instance v0, Lio/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1ce

    const-string v2, "Destination unreachable"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->DESTINATION_UNREACHABLE:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 222
    new-instance v0, Lio/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1cf

    const-string v2, "Key management failure"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->KEY_MANAGEMENT_FAILURE:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 228
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->INTERNAL_SERVER_ERROR:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->INTERNAL_SERVER_ERROR:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 233
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->NOT_IMPLEMENTED:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->NOT_IMPLEMENTED:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 238
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->BAD_GATEWAY:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->BAD_GATEWAY:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 243
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->SERVICE_UNAVAILABLE:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->SERVICE_UNAVAILABLE:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 248
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->GATEWAY_TIMEOUT:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->GATEWAY_TIMEOUT:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 253
    new-instance v0, Lio/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1f9

    const-string v2, "RTSP Version not supported"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->RTSP_VERSION_NOT_SUPPORTED:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 259
    new-instance v0, Lio/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x227

    const-string v2, "Option not supported"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->OPTION_NOT_SUPPORTED:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    return-void
.end method

.method public static valueOf(I)Lio/netty/handler/codec/http/HttpResponseStatus;
    .locals 1
    .param p0, "code"    # I

    .line 268
    sparse-switch p0, :sswitch_data_0

    .line 286
    invoke-static {p0}, Lio/netty/handler/codec/http/HttpResponseStatus;->valueOf(I)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    return-object v0

    .line 285
    :sswitch_0
    sget-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->OPTION_NOT_SUPPORTED:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 284
    :sswitch_1
    sget-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->RTSP_VERSION_NOT_SUPPORTED:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 283
    :sswitch_2
    sget-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->KEY_MANAGEMENT_FAILURE:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 282
    :sswitch_3
    sget-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->DESTINATION_UNREACHABLE:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 281
    :sswitch_4
    sget-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->UNSUPPORTED_TRANSPORT:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 280
    :sswitch_5
    sget-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->ONLY_AGGREGATE_OPERATION_ALLOWED:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 279
    :sswitch_6
    sget-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->AGGREGATE_OPERATION_NOT_ALLOWED:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 278
    :sswitch_7
    sget-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->PARAMETER_IS_READONLY:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 277
    :sswitch_8
    sget-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->INVALID_RANGE:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 276
    :sswitch_9
    sget-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->HEADER_FIELD_NOT_VALID:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 275
    :sswitch_a
    sget-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->METHOD_NOT_VALID:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 274
    :sswitch_b
    sget-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->SESSION_NOT_FOUND:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 273
    :sswitch_c
    sget-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->NOT_ENOUGH_BANDWIDTH:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 272
    :sswitch_d
    sget-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->CONFERENCE_NOT_FOUND:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 271
    :sswitch_e
    sget-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->PARAMETER_NOT_UNDERSTOOD:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 270
    :sswitch_f
    sget-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->MOVED_TEMPORARILY:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 269
    :sswitch_10
    sget-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->LOW_STORAGE_SPACE:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xfa -> :sswitch_10
        0x12e -> :sswitch_f
        0x1c3 -> :sswitch_e
        0x1c4 -> :sswitch_d
        0x1c5 -> :sswitch_c
        0x1c6 -> :sswitch_b
        0x1c7 -> :sswitch_a
        0x1c8 -> :sswitch_9
        0x1c9 -> :sswitch_8
        0x1ca -> :sswitch_7
        0x1cb -> :sswitch_6
        0x1cc -> :sswitch_5
        0x1cd -> :sswitch_4
        0x1ce -> :sswitch_3
        0x1cf -> :sswitch_2
        0x1f9 -> :sswitch_1
        0x227 -> :sswitch_0
    .end sparse-switch
.end method

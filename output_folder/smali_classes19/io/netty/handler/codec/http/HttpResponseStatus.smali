.class public Lio/netty/handler/codec/http/HttpResponseStatus;
.super Ljava/lang/Object;
.source "HttpResponseStatus.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/netty/handler/codec/http/HttpResponseStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACCEPTED:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final BAD_GATEWAY:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final BAD_REQUEST:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final CONFLICT:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final CONTINUE:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final CREATED:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final EXPECTATION_FAILED:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final FAILED_DEPENDENCY:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final FORBIDDEN:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final FOUND:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final GATEWAY_TIMEOUT:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final GONE:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final HTTP_VERSION_NOT_SUPPORTED:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final INSUFFICIENT_STORAGE:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final INTERNAL_SERVER_ERROR:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final LENGTH_REQUIRED:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final LOCKED:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final METHOD_NOT_ALLOWED:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final MISDIRECTED_REQUEST:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final MOVED_PERMANENTLY:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final MULTIPLE_CHOICES:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final MULTI_STATUS:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final NETWORK_AUTHENTICATION_REQUIRED:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final NON_AUTHORITATIVE_INFORMATION:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final NOT_ACCEPTABLE:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final NOT_EXTENDED:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final NOT_FOUND:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final NOT_IMPLEMENTED:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final NOT_MODIFIED:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final NO_CONTENT:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final OK:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final PARTIAL_CONTENT:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final PAYMENT_REQUIRED:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final PERMANENT_REDIRECT:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final PRECONDITION_FAILED:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final PRECONDITION_REQUIRED:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final PROCESSING:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final PROXY_AUTHENTICATION_REQUIRED:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final REQUESTED_RANGE_NOT_SATISFIABLE:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final REQUEST_ENTITY_TOO_LARGE:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final REQUEST_HEADER_FIELDS_TOO_LARGE:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final REQUEST_TIMEOUT:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final REQUEST_URI_TOO_LONG:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final RESET_CONTENT:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final SEE_OTHER:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final SERVICE_UNAVAILABLE:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final SWITCHING_PROTOCOLS:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final TEMPORARY_REDIRECT:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final TOO_MANY_REQUESTS:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final UNAUTHORIZED:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final UNORDERED_COLLECTION:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final UNPROCESSABLE_ENTITY:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final UNSUPPORTED_MEDIA_TYPE:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final UPGRADE_REQUIRED:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final USE_PROXY:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final VARIANT_ALSO_NEGOTIATES:Lio/netty/handler/codec/http/HttpResponseStatus;


# instance fields
.field private final bytes:[B

.field private final code:I

.field private final codeAsText:Lio/netty/util/AsciiString;

.field private codeClass:Lio/netty/handler/codec/http/HttpStatusClass;

.field private final reasonPhrase:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    const/16 v0, 0x64

    const-string v1, "Continue"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->CONTINUE:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 44
    const/16 v0, 0x65

    const-string v1, "Switching Protocols"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->SWITCHING_PROTOCOLS:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 49
    const/16 v0, 0x66

    const-string v1, "Processing"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->PROCESSING:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 54
    const/16 v0, 0xc8

    const-string v1, "OK"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->OK:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 59
    const/16 v0, 0xc9

    const-string v1, "Created"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->CREATED:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 64
    const/16 v0, 0xca

    const-string v1, "Accepted"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->ACCEPTED:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 69
    nop

    .line 70
    const/16 v0, 0xcb

    const-string v1, "Non-Authoritative Information"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->NON_AUTHORITATIVE_INFORMATION:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 75
    const/16 v0, 0xcc

    const-string v1, "No Content"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->NO_CONTENT:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 80
    const/16 v0, 0xcd

    const-string v1, "Reset Content"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->RESET_CONTENT:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 85
    const/16 v0, 0xce

    const-string v1, "Partial Content"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->PARTIAL_CONTENT:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 90
    const/16 v0, 0xcf

    const-string v1, "Multi-Status"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->MULTI_STATUS:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 95
    const/16 v0, 0x12c

    const-string v1, "Multiple Choices"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->MULTIPLE_CHOICES:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 100
    const/16 v0, 0x12d

    const-string v1, "Moved Permanently"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->MOVED_PERMANENTLY:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 105
    const/16 v0, 0x12e

    const-string v1, "Found"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->FOUND:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 110
    const/16 v0, 0x12f

    const-string v1, "See Other"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->SEE_OTHER:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 115
    const/16 v0, 0x130

    const-string v1, "Not Modified"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->NOT_MODIFIED:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 120
    const/16 v0, 0x131

    const-string v1, "Use Proxy"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->USE_PROXY:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 125
    const/16 v0, 0x133

    const-string v1, "Temporary Redirect"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->TEMPORARY_REDIRECT:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 130
    const/16 v0, 0x134

    const-string v1, "Permanent Redirect"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->PERMANENT_REDIRECT:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 135
    const/16 v0, 0x190

    const-string v1, "Bad Request"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->BAD_REQUEST:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 140
    const/16 v0, 0x191

    const-string v1, "Unauthorized"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->UNAUTHORIZED:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 145
    const/16 v0, 0x192

    const-string v1, "Payment Required"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->PAYMENT_REQUIRED:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 150
    const/16 v0, 0x193

    const-string v1, "Forbidden"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->FORBIDDEN:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 155
    const/16 v0, 0x194

    const-string v1, "Not Found"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->NOT_FOUND:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 160
    const/16 v0, 0x195

    const-string v1, "Method Not Allowed"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->METHOD_NOT_ALLOWED:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 165
    const/16 v0, 0x196

    const-string v1, "Not Acceptable"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->NOT_ACCEPTABLE:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 170
    nop

    .line 171
    const/16 v0, 0x197

    const-string v1, "Proxy Authentication Required"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->PROXY_AUTHENTICATION_REQUIRED:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 176
    const/16 v0, 0x198

    const-string v1, "Request Timeout"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->REQUEST_TIMEOUT:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 181
    const/16 v0, 0x199

    const-string v1, "Conflict"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->CONFLICT:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 186
    const/16 v0, 0x19a

    const-string v1, "Gone"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->GONE:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 191
    const/16 v0, 0x19b

    const-string v1, "Length Required"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->LENGTH_REQUIRED:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 196
    const/16 v0, 0x19c

    const-string v1, "Precondition Failed"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->PRECONDITION_FAILED:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 201
    nop

    .line 202
    const/16 v0, 0x19d

    const-string v1, "Request Entity Too Large"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->REQUEST_ENTITY_TOO_LARGE:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 207
    const/16 v0, 0x19e

    const-string v1, "Request-URI Too Long"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->REQUEST_URI_TOO_LONG:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 212
    const/16 v0, 0x19f

    const-string v1, "Unsupported Media Type"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->UNSUPPORTED_MEDIA_TYPE:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 217
    nop

    .line 218
    const/16 v0, 0x1a0

    const-string v1, "Requested Range Not Satisfiable"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->REQUESTED_RANGE_NOT_SATISFIABLE:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 223
    const/16 v0, 0x1a1

    const-string v1, "Expectation Failed"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->EXPECTATION_FAILED:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 230
    const/16 v0, 0x1a5

    const-string v1, "Misdirected Request"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->MISDIRECTED_REQUEST:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 235
    const/16 v0, 0x1a6

    const-string v1, "Unprocessable Entity"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->UNPROCESSABLE_ENTITY:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 240
    const/16 v0, 0x1a7

    const-string v1, "Locked"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->LOCKED:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 245
    const/16 v0, 0x1a8

    const-string v1, "Failed Dependency"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->FAILED_DEPENDENCY:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 250
    const/16 v0, 0x1a9

    const-string v1, "Unordered Collection"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->UNORDERED_COLLECTION:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 255
    const/16 v0, 0x1aa

    const-string v1, "Upgrade Required"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->UPGRADE_REQUIRED:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 260
    const/16 v0, 0x1ac

    const-string v1, "Precondition Required"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->PRECONDITION_REQUIRED:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 265
    const/16 v0, 0x1ad

    const-string v1, "Too Many Requests"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->TOO_MANY_REQUESTS:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 270
    nop

    .line 271
    const/16 v0, 0x1af

    const-string v1, "Request Header Fields Too Large"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->REQUEST_HEADER_FIELDS_TOO_LARGE:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 276
    const/16 v0, 0x1f4

    const-string v1, "Internal Server Error"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->INTERNAL_SERVER_ERROR:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 281
    const/16 v0, 0x1f5

    const-string v1, "Not Implemented"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->NOT_IMPLEMENTED:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 286
    const/16 v0, 0x1f6

    const-string v1, "Bad Gateway"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->BAD_GATEWAY:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 291
    const/16 v0, 0x1f7

    const-string v1, "Service Unavailable"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->SERVICE_UNAVAILABLE:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 296
    const/16 v0, 0x1f8

    const-string v1, "Gateway Timeout"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->GATEWAY_TIMEOUT:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 301
    nop

    .line 302
    const/16 v0, 0x1f9

    const-string v1, "HTTP Version Not Supported"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->HTTP_VERSION_NOT_SUPPORTED:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 307
    const/16 v0, 0x1fa

    const-string v1, "Variant Also Negotiates"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->VARIANT_ALSO_NEGOTIATES:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 312
    const/16 v0, 0x1fb

    const-string v1, "Insufficient Storage"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->INSUFFICIENT_STORAGE:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 317
    const/16 v0, 0x1fe

    const-string v1, "Not Extended"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->NOT_EXTENDED:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 322
    nop

    .line 323
    const/16 v0, 0x1ff

    const-string v1, "Network Authentication Required"

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->NETWORK_AUTHENTICATION_REQUIRED:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 322
    return-void
.end method

.method private constructor <init>(I)V
    .locals 2
    .param p1, "code"    # I

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lio/netty/handler/codec/http/HttpStatusClass;->valueOf(I)Lio/netty/handler/codec/http/HttpStatusClass;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpStatusClass;->defaultReasonPhrase()Lio/netty/util/AsciiString;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;Z)V

    .line 533
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "reasonPhrase"    # Ljava/lang/String;

    .line 539
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;Z)V

    .line 540
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Z)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "reasonPhrase"    # Ljava/lang/String;
    .param p3, "bytes"    # Z

    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    const-string v0, "code"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 544
    const-string v0, "reasonPhrase"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 546
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 547
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 549
    .local v1, "c":C
    sparse-switch v1, :sswitch_data_0

    .line 546
    .end local v1    # "c":C
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 551
    .restart local v1    # "c":C
    :sswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reasonPhrase contains one of the following prohibited characters: \\r\\n: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 557
    .end local v0    # "i":I
    .end local v1    # "c":C
    :cond_0
    iput p1, p0, Lio/netty/handler/codec/http/HttpResponseStatus;->code:I

    .line 558
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 559
    .local v0, "codeString":Ljava/lang/String;
    new-instance v1, Lio/netty/util/AsciiString;

    invoke-direct {v1, v0}, Lio/netty/util/AsciiString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lio/netty/handler/codec/http/HttpResponseStatus;->codeAsText:Lio/netty/util/AsciiString;

    .line 560
    iput-object p2, p0, Lio/netty/handler/codec/http/HttpResponseStatus;->reasonPhrase:Ljava/lang/String;

    .line 561
    if-eqz p3, :cond_1

    .line 562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    iput-object v1, p0, Lio/netty/handler/codec/http/HttpResponseStatus;->bytes:[B

    goto :goto_1

    .line 564
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/handler/codec/http/HttpResponseStatus;->bytes:[B

    .line 566
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method private static newStatus(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;
    .locals 2
    .param p0, "statusCode"    # I
    .param p1, "reasonPhrase"    # Ljava/lang/String;

    .line 326
    new-instance v0, Lio/netty/handler/codec/http/HttpResponseStatus;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;Z)V

    return-object v0
.end method

.method public static parseLine(Lio/netty/util/AsciiString;)Lio/netty/handler/codec/http/HttpResponseStatus;
    .locals 4
    .param p0, "line"    # Lio/netty/util/AsciiString;

    .line 514
    :try_start_0
    sget-object v0, Lio/netty/util/ByteProcessor;->FIND_ASCII_SPACE:Lio/netty/util/ByteProcessor;

    invoke-virtual {p0, v0}, Lio/netty/util/AsciiString;->forEachByte(Lio/netty/util/ByteProcessor;)I

    move-result v0

    .line 515
    .local v0, "space":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lio/netty/util/AsciiString;->parseInt()I

    move-result v1

    invoke-static {v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->valueOf(I)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lio/netty/util/AsciiString;->parseInt(II)I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lio/netty/util/AsciiString;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/netty/handler/codec/http/HttpResponseStatus;->valueOf(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    .line 516
    .end local v0    # "space":I
    :catch_0
    move-exception v0

    .line 517
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "malformed status line: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static parseLine(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpResponseStatus;
    .locals 1
    .param p0, "line"    # Ljava/lang/CharSequence;

    .line 481
    instance-of v0, p0, Lio/netty/util/AsciiString;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/netty/util/AsciiString;

    invoke-static {v0}, Lio/netty/handler/codec/http/HttpResponseStatus;->parseLine(Lio/netty/util/AsciiString;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/netty/handler/codec/http/HttpResponseStatus;->parseLine(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static parseLine(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;
    .locals 4
    .param p0, "line"    # Ljava/lang/String;

    .line 495
    const/16 v0, 0x20

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 496
    .local v0, "space":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->valueOf(I)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 497
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/netty/handler/codec/http/HttpResponseStatus;->valueOf(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    :goto_0
    return-object v1

    .line 498
    .end local v0    # "space":I
    :catch_0
    move-exception v0

    .line 499
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "malformed status line: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static valueOf(I)Lio/netty/handler/codec/http/HttpResponseStatus;
    .locals 2
    .param p0, "code"    # I

    .line 335
    invoke-static {p0}, Lio/netty/handler/codec/http/HttpResponseStatus;->valueOf0(I)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    .line 336
    .local v0, "status":Lio/netty/handler/codec/http/HttpResponseStatus;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lio/netty/handler/codec/http/HttpResponseStatus;

    invoke-direct {v1, p0}, Lio/netty/handler/codec/http/HttpResponseStatus;-><init>(I)V

    :goto_0
    return-object v1
.end method

.method public static valueOf(ILjava/lang/String;)Lio/netty/handler/codec/http/HttpResponseStatus;
    .locals 2
    .param p0, "code"    # I
    .param p1, "reasonPhrase"    # Ljava/lang/String;

    .line 466
    invoke-static {p0}, Lio/netty/handler/codec/http/HttpResponseStatus;->valueOf0(I)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    .line 467
    .local v0, "responseStatus":Lio/netty/handler/codec/http/HttpResponseStatus;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpResponseStatus;->reasonPhrase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lio/netty/handler/codec/http/HttpResponseStatus;

    invoke-direct {v1, p0, p1}, Lio/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    :goto_0
    return-object v1
.end method

.method private static valueOf0(I)Lio/netty/handler/codec/http/HttpResponseStatus;
    .locals 1
    .param p0, "code"    # I

    .line 340
    sparse-switch p0, :sswitch_data_0

    .line 454
    const/4 v0, 0x0

    return-object v0

    .line 452
    :sswitch_0
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->NETWORK_AUTHENTICATION_REQUIRED:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 450
    :sswitch_1
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->NOT_EXTENDED:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 448
    :sswitch_2
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->INSUFFICIENT_STORAGE:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 446
    :sswitch_3
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->VARIANT_ALSO_NEGOTIATES:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 444
    :sswitch_4
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->HTTP_VERSION_NOT_SUPPORTED:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 442
    :sswitch_5
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->GATEWAY_TIMEOUT:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 440
    :sswitch_6
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->SERVICE_UNAVAILABLE:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 438
    :sswitch_7
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->BAD_GATEWAY:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 436
    :sswitch_8
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->NOT_IMPLEMENTED:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 434
    :sswitch_9
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->INTERNAL_SERVER_ERROR:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 432
    :sswitch_a
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->REQUEST_HEADER_FIELDS_TOO_LARGE:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 430
    :sswitch_b
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->TOO_MANY_REQUESTS:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 428
    :sswitch_c
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->PRECONDITION_REQUIRED:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 426
    :sswitch_d
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->UPGRADE_REQUIRED:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 424
    :sswitch_e
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->UNORDERED_COLLECTION:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 422
    :sswitch_f
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->FAILED_DEPENDENCY:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 420
    :sswitch_10
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->LOCKED:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 418
    :sswitch_11
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->UNPROCESSABLE_ENTITY:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 416
    :sswitch_12
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->MISDIRECTED_REQUEST:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 414
    :sswitch_13
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->EXPECTATION_FAILED:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 412
    :sswitch_14
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->REQUESTED_RANGE_NOT_SATISFIABLE:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 410
    :sswitch_15
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->UNSUPPORTED_MEDIA_TYPE:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 408
    :sswitch_16
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->REQUEST_URI_TOO_LONG:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 406
    :sswitch_17
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->REQUEST_ENTITY_TOO_LARGE:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 404
    :sswitch_18
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->PRECONDITION_FAILED:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 402
    :sswitch_19
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->LENGTH_REQUIRED:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 400
    :sswitch_1a
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->GONE:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 398
    :sswitch_1b
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->CONFLICT:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 396
    :sswitch_1c
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->REQUEST_TIMEOUT:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 394
    :sswitch_1d
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->PROXY_AUTHENTICATION_REQUIRED:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 392
    :sswitch_1e
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->NOT_ACCEPTABLE:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 390
    :sswitch_1f
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->METHOD_NOT_ALLOWED:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 388
    :sswitch_20
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->NOT_FOUND:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 386
    :sswitch_21
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->FORBIDDEN:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 384
    :sswitch_22
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->PAYMENT_REQUIRED:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 382
    :sswitch_23
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->UNAUTHORIZED:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 380
    :sswitch_24
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->BAD_REQUEST:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 378
    :sswitch_25
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->PERMANENT_REDIRECT:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 376
    :sswitch_26
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->TEMPORARY_REDIRECT:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 374
    :sswitch_27
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->USE_PROXY:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 372
    :sswitch_28
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->NOT_MODIFIED:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 370
    :sswitch_29
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->SEE_OTHER:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 368
    :sswitch_2a
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->FOUND:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 366
    :sswitch_2b
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->MOVED_PERMANENTLY:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 364
    :sswitch_2c
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->MULTIPLE_CHOICES:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 362
    :sswitch_2d
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->MULTI_STATUS:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 360
    :sswitch_2e
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->PARTIAL_CONTENT:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 358
    :sswitch_2f
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->RESET_CONTENT:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 356
    :sswitch_30
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->NO_CONTENT:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 354
    :sswitch_31
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->NON_AUTHORITATIVE_INFORMATION:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 352
    :sswitch_32
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->ACCEPTED:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 350
    :sswitch_33
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->CREATED:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 348
    :sswitch_34
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->OK:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 346
    :sswitch_35
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->PROCESSING:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 344
    :sswitch_36
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->SWITCHING_PROTOCOLS:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 342
    :sswitch_37
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->CONTINUE:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_37
        0x65 -> :sswitch_36
        0x66 -> :sswitch_35
        0xc8 -> :sswitch_34
        0xc9 -> :sswitch_33
        0xca -> :sswitch_32
        0xcb -> :sswitch_31
        0xcc -> :sswitch_30
        0xcd -> :sswitch_2f
        0xce -> :sswitch_2e
        0xcf -> :sswitch_2d
        0x12c -> :sswitch_2c
        0x12d -> :sswitch_2b
        0x12e -> :sswitch_2a
        0x12f -> :sswitch_29
        0x130 -> :sswitch_28
        0x131 -> :sswitch_27
        0x133 -> :sswitch_26
        0x134 -> :sswitch_25
        0x190 -> :sswitch_24
        0x191 -> :sswitch_23
        0x192 -> :sswitch_22
        0x193 -> :sswitch_21
        0x194 -> :sswitch_20
        0x195 -> :sswitch_1f
        0x196 -> :sswitch_1e
        0x197 -> :sswitch_1d
        0x198 -> :sswitch_1c
        0x199 -> :sswitch_1b
        0x19a -> :sswitch_1a
        0x19b -> :sswitch_19
        0x19c -> :sswitch_18
        0x19d -> :sswitch_17
        0x19e -> :sswitch_16
        0x19f -> :sswitch_15
        0x1a0 -> :sswitch_14
        0x1a1 -> :sswitch_13
        0x1a5 -> :sswitch_12
        0x1a6 -> :sswitch_11
        0x1a7 -> :sswitch_10
        0x1a8 -> :sswitch_f
        0x1a9 -> :sswitch_e
        0x1aa -> :sswitch_d
        0x1ac -> :sswitch_c
        0x1ad -> :sswitch_b
        0x1af -> :sswitch_a
        0x1f4 -> :sswitch_9
        0x1f5 -> :sswitch_8
        0x1f6 -> :sswitch_7
        0x1f7 -> :sswitch_6
        0x1f8 -> :sswitch_5
        0x1f9 -> :sswitch_4
        0x1fa -> :sswitch_3
        0x1fb -> :sswitch_2
        0x1fe -> :sswitch_1
        0x1ff -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public code()I
    .locals 1

    .line 572
    iget v0, p0, Lio/netty/handler/codec/http/HttpResponseStatus;->code:I

    return v0
.end method

.method public codeAsText()Lio/netty/util/AsciiString;
    .locals 1

    .line 579
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpResponseStatus;->codeAsText:Lio/netty/util/AsciiString;

    return-object v0
.end method

.method public codeClass()Lio/netty/handler/codec/http/HttpStatusClass;
    .locals 2

    .line 593
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpResponseStatus;->codeClass:Lio/netty/handler/codec/http/HttpStatusClass;

    .line 594
    .local v0, "type":Lio/netty/handler/codec/http/HttpStatusClass;
    if-nez v0, :cond_0

    .line 595
    iget v1, p0, Lio/netty/handler/codec/http/HttpResponseStatus;->code:I

    invoke-static {v1}, Lio/netty/handler/codec/http/HttpStatusClass;->valueOf(I)Lio/netty/handler/codec/http/HttpStatusClass;

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Lio/netty/handler/codec/http/HttpResponseStatus;->codeClass:Lio/netty/handler/codec/http/HttpStatusClass;

    .line 597
    :cond_0
    return-object v0
.end method

.method public compareTo(Lio/netty/handler/codec/http/HttpResponseStatus;)I
    .locals 2
    .param p1, "o"    # Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 624
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v0

    invoke-virtual {p1}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 34
    check-cast p1, Lio/netty/handler/codec/http/HttpResponseStatus;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpResponseStatus;->compareTo(Lio/netty/handler/codec/http/HttpResponseStatus;)I

    move-result p1

    return p1
.end method

.method encode(Lio/netty/buffer/ByteBuf;)V
    .locals 2
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;

    .line 637
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpResponseStatus;->bytes:[B

    if-nez v0, :cond_0

    .line 638
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpResponseStatus;->codeAsText:Lio/netty/util/AsciiString;

    invoke-static {v0, p1}, Lio/netty/buffer/ByteBufUtil;->copy(Lio/netty/util/AsciiString;Lio/netty/buffer/ByteBuf;)V

    .line 639
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 640
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpResponseStatus;->reasonPhrase:Ljava/lang/String;

    sget-object v1, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0, v1}, Lio/netty/buffer/ByteBuf;->writeCharSequence(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)I

    goto :goto_0

    .line 642
    :cond_0
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    .line 644
    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 611
    instance-of v0, p1, Lio/netty/handler/codec/http/HttpResponseStatus;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 612
    return v1

    .line 615
    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v0

    move-object v2, p1

    check-cast v2, Lio/netty/handler/codec/http/HttpResponseStatus;

    invoke-virtual {v2}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v2

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 602
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v0

    return v0
.end method

.method public reasonPhrase()Ljava/lang/String;
    .locals 1

    .line 586
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpResponseStatus;->reasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/netty/handler/codec/http/HttpResponseStatus;->reasonPhrase:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lio/netty/handler/codec/http/HttpResponseStatus;->codeAsText:Lio/netty/util/AsciiString;

    .line 630
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 631
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/http/HttpResponseStatus;->reasonPhrase:Ljava/lang/String;

    .line 632
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 633
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 629
    return-object v0
.end method

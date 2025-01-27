.class public final Lio/netty/handler/ssl/SslHandshakeCompletionEvent;
.super Lio/netty/handler/ssl/SslCompletionEvent;
.source "SslHandshakeCompletionEvent.java"


# static fields
.field public static final SUCCESS:Lio/netty/handler/ssl/SslHandshakeCompletionEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;

    invoke-direct {v0}, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;-><init>()V

    sput-object v0, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;->SUCCESS:Lio/netty/handler/ssl/SslHandshakeCompletionEvent;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lio/netty/handler/ssl/SslCompletionEvent;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 37
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslCompletionEvent;-><init>(Ljava/lang/Throwable;)V

    .line 38
    return-void
.end method

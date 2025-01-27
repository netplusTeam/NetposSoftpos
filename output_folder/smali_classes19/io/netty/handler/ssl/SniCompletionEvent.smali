.class public final Lio/netty/handler/ssl/SniCompletionEvent;
.super Lio/netty/handler/ssl/SslCompletionEvent;
.source "SniCompletionEvent.java"


# instance fields
.field private final hostname:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "hostname"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0}, Lio/netty/handler/ssl/SslCompletionEvent;-><init>()V

    .line 29
    iput-object p1, p0, Lio/netty/handler/ssl/SniCompletionEvent;->hostname:Ljava/lang/String;

    .line 30
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 33
    invoke-direct {p0, p2}, Lio/netty/handler/ssl/SslCompletionEvent;-><init>(Ljava/lang/Throwable;)V

    .line 34
    iput-object p1, p0, Lio/netty/handler/ssl/SniCompletionEvent;->hostname:Ljava/lang/String;

    .line 35
    return-void
.end method

.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lio/netty/handler/ssl/SniCompletionEvent;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    return-void
.end method


# virtual methods
.method public hostname()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lio/netty/handler/ssl/SniCompletionEvent;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 50
    invoke-virtual {p0}, Lio/netty/handler/ssl/SniCompletionEvent;->cause()Ljava/lang/Throwable;

    move-result-object v0

    .line 51
    .local v0, "cause":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(SUCCESS=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/netty/handler/ssl/SniCompletionEvent;->hostname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 51
    :goto_0
    return-object v1
.end method

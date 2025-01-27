.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;
.super Ljava/lang/Object;
.source "Mqtt5EnhancedAuthMechanism.java"


# direct methods
.method public static synthetic lambda$onServerReAuth$0(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "aVoid"    # Ljava/lang/Void;

    .line 110
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract getMethod()Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;
.end method

.method public abstract getTimeout()I
.end method

.method public abstract onAuth(Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConfig;Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5Connect;Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuthBuilder;)Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConfig;",
            "Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5Connect;",
            "Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuthBuilder;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onAuthError(Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConfig;Ljava/lang/Throwable;)V
.end method

.method public abstract onAuthRejected(Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConfig;Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;)V
.end method

.method public abstract onAuthSuccess(Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConfig;Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;)Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConfig;",
            "Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onContinue(Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConfig;Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5Auth;Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthBuilder;)Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConfig;",
            "Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5Auth;",
            "Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthBuilder;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onReAuth(Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConfig;Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthBuilder;)Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConfig;",
            "Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthBuilder;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onReAuthError(Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConfig;Ljava/lang/Throwable;)V
.end method

.method public abstract onReAuthRejected(Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConfig;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;)V
.end method

.method public abstract onReAuthSuccess(Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConfig;Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5Auth;)Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConfig;",
            "Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5Auth;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public onServerReAuth(Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConfig;Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5Auth;Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthBuilder;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .param p1, "clientConfig"    # Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConfig;
    .param p2, "auth"    # Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5Auth;
    .param p3, "authBuilder"    # Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConfig;",
            "Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5Auth;",
            "Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthBuilder;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 110
    invoke-interface {p0, p1, p3}, Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;->onReAuth(Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConfig;Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthBuilder;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v1, Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.class public interface abstract Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3Connect;
.super Ljava/lang/Object;
.source "Mqtt3Connect.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3Message;


# static fields
.field public static final DEFAULT_CLEAN_SESSION:Z = true

.field public static final DEFAULT_KEEP_ALIVE:I = 0x3c

.field public static final NO_KEEP_ALIVE:I


# direct methods
.method public static builder()Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3ConnectBuilder;
    .locals 1

    .line 57
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder$Default;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder$Default;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract extend()Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3ConnectBuilder;
.end method

.method public abstract getKeepAlive()I
.end method

.method public abstract getSimpleAuth()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/auth/Mqtt3SimpleAuth;",
            ">;"
        }
    .end annotation
.end method

.method public getType()Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;
    .locals 1

    .line 82
    sget-object v0, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->CONNECT:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    return-object v0
.end method

.method public abstract getWillPublish()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isCleanSession()Z
.end method

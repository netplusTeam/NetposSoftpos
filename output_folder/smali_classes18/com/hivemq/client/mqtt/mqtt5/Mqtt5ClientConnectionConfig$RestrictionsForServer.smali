.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConnectionConfig$RestrictionsForServer;
.super Ljava/lang/Object;
.source "Mqtt5ClientConnectionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConnectionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RestrictionsForServer"
.end annotation


# virtual methods
.method public abstract getMaximumPacketSize()I
.end method

.method public abstract getReceiveMaximum()I
.end method

.method public abstract getTopicAliasMaximum()I
.end method

.method public abstract isProblemInformationRequested()Z
.end method

.method public abstract isResponseInformationRequested()Z
.end method

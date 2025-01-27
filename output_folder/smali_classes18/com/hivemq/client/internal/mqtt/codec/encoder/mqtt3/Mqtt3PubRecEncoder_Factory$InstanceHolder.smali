.class final Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubRecEncoder_Factory$InstanceHolder;
.super Ljava/lang/Object;
.source "Mqtt3PubRecEncoder_Factory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubRecEncoder_Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubRecEncoder_Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubRecEncoder_Factory;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubRecEncoder_Factory;-><init>()V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubRecEncoder_Factory$InstanceHolder;->INSTANCE:Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubRecEncoder_Factory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubRecEncoder_Factory;
    .locals 1

    .line 28
    sget-object v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubRecEncoder_Factory$InstanceHolder;->INSTANCE:Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubRecEncoder_Factory;

    return-object v0
.end method

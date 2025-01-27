.class public Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;
.super Ljava/lang/Object;
.source "MqttUserPropertiesImpl.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;


# static fields
.field public static final NO_USER_PROPERTIES:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;


# instance fields
.field private encodedLength:I

.field private final userProperties:Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    .line 37
    invoke-static {}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->of()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;-><init>(Lcom/hivemq/client/internal/util/collections/ImmutableList;)V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->NO_USER_PROPERTIES:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    .line 36
    return-void
.end method

.method private constructor <init>(Lcom/hivemq/client/internal/util/collections/ImmutableList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;",
            ">;)V"
        }
    .end annotation

    .line 66
    .local p1, "userProperties":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->encodedLength:I

    .line 67
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->userProperties:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    .line 68
    return-void
.end method

.method public static build(Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;",
            ">;)",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;"
        }
    .end annotation

    .line 60
    .local p0, "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    if-nez p0, :cond_0

    sget-object v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->NO_USER_PROPERTIES:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->build()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->of(Lcom/hivemq/client/internal/util/collections/ImmutableList;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private calculateEncodedLength()I
    .locals 3

    .line 103
    const/4 v0, 0x0

    .line 105
    .local v0, "encodedLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->userProperties:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    invoke-interface {v2}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->userProperties:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    invoke-interface {v2, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->encodedLength()I

    move-result v2

    add-int/2addr v0, v2

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public static of(Lcom/hivemq/client/internal/util/collections/ImmutableList;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;",
            ">;)",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;"
        }
    .end annotation

    .line 48
    .local p0, "userProperties":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    invoke-interface {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->NO_USER_PROPERTIES:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;-><init>(Lcom/hivemq/client/internal/util/collections/ImmutableList;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public asList()Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->userProperties:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    return-object v0
.end method

.method public bridge synthetic asList()Ljava/util/List;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->asList()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public encode(Lio/netty/buffer/ByteBuf;)V
    .locals 2
    .param p1, "out"    # Lio/netty/buffer/ByteBuf;

    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->userProperties:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    invoke-interface {v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->userProperties:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    invoke-interface {v1, v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;

    invoke-virtual {v1, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->encode(Lio/netty/buffer/ByteBuf;)V

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public encodedLength()I
    .locals 2

    .line 96
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->encodedLength:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->calculateEncodedLength()I

    move-result v0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->encodedLength:I

    .line 99
    :cond_0
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->encodedLength:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 113
    if-ne p0, p1, :cond_0

    .line 114
    const/4 v0, 0x1

    return v0

    .line 116
    :cond_0
    instance-of v0, p1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    if-nez v0, :cond_1

    .line 117
    const/4 v0, 0x0

    return v0

    .line 119
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    .line 120
    .local v0, "that":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->userProperties:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    iget-object v2, v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->userProperties:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public extend()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Default;
    .locals 1

    .line 130
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Default;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Default;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    return-object v0
.end method

.method public bridge synthetic extend()Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilder;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->extend()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Default;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->userProperties:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->userProperties:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public abstract Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;
.super Ljava/lang/Object;
.source "MqttUserPropertiesImplBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Nested;,
        Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Default;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final listBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 39
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->builder()Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;->listBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    .line 41
    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V
    .locals 2
    .param p1, "userProperties"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    .line 43
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->asList()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    .line 45
    .local v0, "list":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    invoke-interface {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->builder(I)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;->listBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    .line 46
    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->addAll(Ljava/util/Collection;)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    .line 47
    return-void
.end method


# virtual methods
.method public add(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;
    .locals 2
    .param p1, "name"    # Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;
    .param p2, "value"    # Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;",
            "Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;",
            ")TB;"
        }
    .end annotation

    .line 57
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder<TB;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;->listBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    invoke-static {p1, p2}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->userProperty(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    .line 58
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;
    .locals 2
    .param p1, "userProperty"    # Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;",
            ")TB;"
        }
    .end annotation

    .line 62
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder<TB;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;->listBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->userProperty(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    .line 63
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/String;Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 52
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder<TB;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;->listBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    invoke-static {p1, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->of(Ljava/lang/String;Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    .line 53
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addAll(Ljava/util/Collection;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;",
            ">;)TB;"
        }
    .end annotation

    .line 76
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder<TB;>;"
    .local p1, "userProperties":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;>;"
    const-string v0, "User Properties"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;->listBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->ensureFree(I)V

    .line 78
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;)V

    invoke-interface {p1, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 79
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addAll(Ljava/util/stream/Stream;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Stream<",
            "+",
            "Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;",
            ">;)TB;"
        }
    .end annotation

    .line 83
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder<TB;>;"
    .local p1, "userProperties":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<+Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;>;"
    const-string v0, "User Properties"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 85
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs addAll([Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;
    .locals 3
    .param p1, "userProperties"    # [Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;",
            ")TB;"
        }
    .end annotation

    .line 67
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder<TB;>;"
    const-string v0, "User Properties"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;->listBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->ensureFree(I)V

    .line 69
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 70
    .local v2, "userProperty":Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;
    invoke-virtual {p0, v2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;->add(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;

    .line 69
    .end local v2    # "userProperty":Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;
    .locals 1

    .line 89
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder<TB;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;->listBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->build(Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object v0

    return-object v0
.end method

.method abstract self()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

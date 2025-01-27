.class public Lcom/fasterxml/jackson/databind/ext/Java7HandlersImpl;
.super Lcom/fasterxml/jackson/databind/ext/Java7Handlers;
.source "Java7HandlersImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/ext/Java7Handlers;-><init>()V

    return-void
.end method


# virtual methods
.method public getClassJavaNioFilePath()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 15
    const-class v0, Ljava/nio/file/Path;

    return-object v0
.end method

.method public getDeserializerForJavaNioFilePath(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .line 20
    .local p1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/nio/file/Path;

    if-ne p1, v0, :cond_0

    .line 21
    new-instance v0, Lcom/fasterxml/jackson/databind/ext/NioPathDeserializer;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ext/NioPathDeserializer;-><init>()V

    return-object v0

    .line 23
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSerializerForJavaNioFilePath(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;"
        }
    .end annotation

    .line 28
    .local p1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/nio/file/Path;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    new-instance v0, Lcom/fasterxml/jackson/databind/ext/NioPathSerializer;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ext/NioPathSerializer;-><init>()V

    return-object v0

    .line 31
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

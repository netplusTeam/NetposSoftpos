.class public Lch/qos/logback/core/net/HardenedObjectInputStream;
.super Ljava/io/ObjectInputStream;
.source "HardenedObjectInputStream.java"


# static fields
.field static final JAVA_PACKAGES:[Ljava/lang/String;


# instance fields
.field final whitelistedClassNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    const-string v0, "java.lang"

    const-string v1, "java.util"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lch/qos/logback/core/net/HardenedObjectInputStream;->JAVA_PACKAGES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/List;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    .local p2, "whitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/net/HardenedObjectInputStream;->whitelistedClassNames:Ljava/util/List;

    .line 41
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[Ljava/lang/String;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "whilelist"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/net/HardenedObjectInputStream;->whitelistedClassNames:Ljava/util/List;

    .line 30
    if-eqz p2, :cond_0

    .line 31
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 32
    iget-object v1, p0, Lch/qos/logback/core/net/HardenedObjectInputStream;->whitelistedClassNames:Ljava/util/List;

    aget-object v2, p2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private isWhitelisted(Ljava/lang/String;)Z
    .locals 4
    .param p1, "incomingClassName"    # Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lch/qos/logback/core/net/HardenedObjectInputStream;->JAVA_PACKAGES:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    .line 58
    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    return v3

    .line 57
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lch/qos/logback/core/net/HardenedObjectInputStream;->whitelistedClassNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 62
    .local v1, "whiteListed":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 63
    return v3

    .line 64
    .end local v1    # "whiteListed":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 65
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected addToWhitelist(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 69
    .local p1, "additionalAuthorizedClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lch/qos/logback/core/net/HardenedObjectInputStream;->whitelistedClassNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 70
    return-void
.end method

.method protected resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .locals 4
    .param p1, "anObjectStreamClass"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 47
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "incomingClassName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lch/qos/logback/core/net/HardenedObjectInputStream;->isWhitelisted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 50
    :cond_0
    new-instance v1, Ljava/io/InvalidClassException;

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unauthorized deserialization attempt"

    invoke-direct {v1, v3, v2}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

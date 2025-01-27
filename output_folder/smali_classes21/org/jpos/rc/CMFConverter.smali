.class public Lorg/jpos/rc/CMFConverter;
.super Ljava/lang/Object;
.source "CMFConverter.java"

# interfaces
.implements Lorg/jpos/rc/IRCConverter;
.implements Lorg/jpos/core/Configurable;


# static fields
.field private static final ircs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jpos/rc/IRC;",
            ">;"
        }
    .end annotation
.end field

.field private static final rcs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/jpos/rc/RC;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cfg:Lorg/jpos/core/Configuration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jpos/rc/CMFConverter;->rcs:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jpos/rc/CMFConverter;->ircs:Ljava/util/Map;

    .line 37
    :try_start_0
    const-string v0, "org/jpos/rc/CMF.properties"

    invoke-static {v0}, Lorg/jpos/rc/CMFConverter;->load(Ljava/lang/String;)V

    .line 38
    const-string v0, "META-INF/org/jpos/rc/CMF.properties"

    invoke-static {v0}, Lorg/jpos/rc/CMFConverter;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/jpos/core/Configuration;)V
    .locals 0
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/jpos/rc/CMFConverter;->cfg:Lorg/jpos/core/Configuration;

    .line 48
    return-void
.end method

.method private static addBundle(Ljava/util/ResourceBundle;)V
    .locals 8
    .param p0, "r"    # Ljava/util/ResourceBundle;

    .line 101
    invoke-virtual {p0}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v0

    .line 102
    .local v0, "en":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 104
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Lorg/jpos/rc/CMFConverter;->buildRC(Ljava/lang/String;)Lorg/jpos/rc/SimpleRC;

    move-result-object v3

    .line 106
    .local v3, "rc":Lorg/jpos/rc/RC;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 107
    .local v4, "irc":I
    sget-object v5, Lorg/jpos/rc/CMFConverter;->rcs:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v5, Lorg/jpos/rc/CMFConverter;->ircs:Ljava/util/Map;

    invoke-interface {v3}, Lorg/jpos/rc/RC;->rc()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Lorg/jpos/rc/CMF;->valueOf(I)Lorg/jpos/rc/IRC;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    .end local v3    # "rc":Lorg/jpos/rc/RC;
    .end local v4    # "irc":I
    goto :goto_0

    .line 110
    :cond_0
    return-void
.end method

.method private static buildRC(Ljava/lang/String;)Lorg/jpos/rc/SimpleRC;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .line 89
    invoke-static {p0}, Lorg/jpos/iso/ISOUtil;->commaDecode(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "ss":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 91
    .local v1, "rc":Ljava/lang/String;
    const/4 v2, 0x0

    .line 92
    .local v2, "display":Ljava/lang/String;
    array-length v3, v0

    if-lez v3, :cond_0

    .line 93
    const/4 v3, 0x0

    aget-object v1, v0, v3

    .line 94
    :cond_0
    array-length v3, v0

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 95
    aget-object v2, v0, v4

    .line 96
    :cond_1
    const-string v3, "Invalid result code"

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    new-instance v3, Lorg/jpos/rc/SimpleRC;

    invoke-direct {v3, v1, v2}, Lorg/jpos/rc/SimpleRC;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private static load(Ljava/lang/String;)V
    .locals 4
    .param p0, "base"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-static {p0}, Lorg/jpos/rc/CMFConverter;->loadResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 73
    .local v0, "in":Ljava/io/InputStream;
    if-eqz v0, :cond_1

    .line 74
    :try_start_0
    new-instance v1, Ljava/util/PropertyResourceBundle;

    invoke-direct {v1, v0}, Ljava/util/PropertyResourceBundle;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Lorg/jpos/rc/CMFConverter;->addBundle(Ljava/util/ResourceBundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 72
    :catchall_0
    move-exception v1

    .end local v0    # "in":Ljava/io/InputStream;
    .end local p0    # "base":Ljava/lang/String;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local p0    # "base":Ljava/lang/String;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v2

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 76
    .end local v0    # "in":Ljava/io/InputStream;
    :cond_2
    return-void
.end method

.method private static loadResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    .line 80
    .local v0, "in":Ljava/io/InputStream;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 81
    .local v1, "contextClassLoader":Ljava/lang/ClassLoader;
    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {v1, p0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 83
    :cond_0
    if-nez v0, :cond_1

    .line 84
    const-class v2, Lorg/jpos/rc/CMFConverter;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 85
    :cond_1
    return-object v0
.end method


# virtual methods
.method public convert(Lorg/jpos/rc/RC;)Lorg/jpos/rc/IRC;
    .locals 2
    .param p1, "rc"    # Lorg/jpos/rc/RC;

    .line 64
    sget-object v0, Lorg/jpos/rc/CMFConverter;->ircs:Ljava/util/Map;

    invoke-interface {p1}, Lorg/jpos/rc/RC;->rc()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/rc/IRC;

    .line 65
    .local v0, "irc":Lorg/jpos/rc/IRC;
    if-nez v0, :cond_0

    .line 66
    invoke-interface {p1}, Lorg/jpos/rc/RC;->rc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lorg/jpos/rc/CMF;->valueOf(I)Lorg/jpos/rc/IRC;

    move-result-object v0

    .line 68
    :cond_0
    return-object v0
.end method

.method public convert(Lorg/jpos/rc/IRC;)Lorg/jpos/rc/RC;
    .locals 5
    .param p1, "irc"    # Lorg/jpos/rc/IRC;

    .line 52
    iget-object v0, p0, Lorg/jpos/rc/CMFConverter;->cfg:Lorg/jpos/core/Configuration;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/jpos/rc/IRC;->irc()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 53
    .local v0, "s":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    .line 54
    invoke-static {v0}, Lorg/jpos/rc/CMFConverter;->buildRC(Ljava/lang/String;)Lorg/jpos/rc/SimpleRC;

    move-result-object v1

    return-object v1

    .line 55
    :cond_1
    sget-object v2, Lorg/jpos/rc/CMFConverter;->rcs:Ljava/util/Map;

    invoke-interface {p1}, Lorg/jpos/rc/IRC;->irc()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 56
    invoke-interface {p1}, Lorg/jpos/rc/IRC;->irc()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jpos/rc/RC;

    return-object v1

    .line 58
    :cond_2
    invoke-interface {p1}, Lorg/jpos/rc/IRC;->irc()I

    move-result v2

    const/16 v3, 0x270f

    if-le v2, v3, :cond_3

    invoke-interface {p1}, Lorg/jpos/rc/IRC;->irc()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Lorg/jpos/rc/IRC;->irc()I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x4

    invoke-static {v2, v3, v4}, Lorg/jpos/iso/ISOUtil;->zeropad(JI)Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v0, v2

    .line 59
    new-instance v2, Lorg/jpos/rc/SimpleRC;

    instance-of v3, p1, Lorg/jpos/rc/CMF;

    if-eqz v3, :cond_4

    move-object v1, p1

    check-cast v1, Lorg/jpos/rc/CMF;

    invoke-virtual {v1}, Lorg/jpos/rc/CMF;->name()Ljava/lang/String;

    move-result-object v1

    const-string v3, "_"

    const-string v4, " "

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-direct {v2, v0, v1}, Lorg/jpos/rc/SimpleRC;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 0
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lorg/jpos/rc/CMFConverter;->cfg:Lorg/jpos/core/Configuration;

    .line 115
    return-void
.end method

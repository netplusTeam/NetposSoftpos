.class public Lcom/sleepycat/util/ClassResolver$Stream;
.super Ljava/io/ObjectInputStream;
.source "ClassResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/util/ClassResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stream"
.end annotation


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 52
    iput-object p2, p0, Lcom/sleepycat/util/ClassResolver$Stream;->classLoader:Ljava/lang/ClassLoader;

    .line 53
    return-void
.end method


# virtual methods
.method protected resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .locals 4
    .param p1, "desc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "firstException":Ljava/lang/ClassNotFoundException;
    iget-object v1, p0, Lcom/sleepycat/util/ClassResolver$Stream;->classLoader:Ljava/lang/ClassLoader;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 62
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sleepycat/util/ClassResolver$Stream;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    if-nez v0, :cond_0

    .line 66
    move-object v0, v1

    .line 71
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 72
    .local v1, "threadLoader":Ljava/lang/ClassLoader;
    if-eqz v1, :cond_1

    .line 74
    :try_start_1
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    .line 76
    :catch_1
    move-exception v2

    .line 77
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    if-nez v0, :cond_1

    .line 78
    move-object v0, v2

    .line 83
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :cond_1
    :try_start_2
    invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v2

    .line 84
    :catch_2
    move-exception v2

    .line 85
    .restart local v2    # "e":Ljava/lang/ClassNotFoundException;
    if-nez v0, :cond_2

    .line 86
    move-object v0, v2

    .line 89
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :cond_2
    throw v0
.end method

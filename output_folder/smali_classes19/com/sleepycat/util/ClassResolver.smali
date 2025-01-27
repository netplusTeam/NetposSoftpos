.class public Lcom/sleepycat/util/ClassResolver;
.super Ljava/lang/Object;
.source "ClassResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/util/ClassResolver$Stream;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resolveClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 3
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "firstException":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 113
    :try_start_0
    invoke-static {p0, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 115
    :catch_0
    move-exception v2

    .line 116
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    if-nez v0, :cond_0

    .line 117
    move-object v0, v2

    .line 122
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 123
    .local v2, "threadLoader":Ljava/lang/ClassLoader;
    if-eqz v2, :cond_1

    .line 125
    :try_start_1
    invoke-static {p0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 127
    :catch_1
    move-exception v1

    .line 128
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    if-nez v0, :cond_1

    .line 129
    move-object v0, v1

    .line 134
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_1
    :try_start_2
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v1

    .line 135
    :catch_2
    move-exception v1

    .line 136
    .restart local v1    # "e":Ljava/lang/ClassNotFoundException;
    if-nez v0, :cond_2

    .line 137
    move-object v0, v1

    .line 140
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_2
    throw v0
.end method

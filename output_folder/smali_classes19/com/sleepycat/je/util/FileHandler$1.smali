.class Lcom/sleepycat/je/util/FileHandler$1;
.super Ljava/util/logging/ErrorManager;
.source "FileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/util/FileHandler;-><init>(Ljava/lang/String;IILjava/util/logging/Formatter;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/util/FileHandler;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/util/FileHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/util/FileHandler;

    .line 93
    iput-object p1, p0, Lcom/sleepycat/je/util/FileHandler$1;->this$0:Lcom/sleepycat/je/util/FileHandler;

    invoke-direct {p0}, Ljava/util/logging/ErrorManager;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p3, "code"    # I

    .line 95
    sget-boolean v0, Lcom/sleepycat/je/util/FileHandler;->STIFLE_DEFAULT_ERROR_MANAGER:Z

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileHandler stifled exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-super {p0, p1, p2, p3}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 101
    :goto_0
    return-void
.end method

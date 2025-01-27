.class Lcom/sleepycat/je/log/FileManager$4;
.super Ljava/lang/Object;
.source "FileManager.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/log/FileManager;->gatherDataDirs()[Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/log/FileManager;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/log/FileManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/log/FileManager;

    .line 941
    iput-object p1, p0, Lcom/sleepycat/je/log/FileManager$4;->this$0:Lcom/sleepycat/je/log/FileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .line 944
    if-eqz p2, :cond_0

    .line 945
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "dataNNN"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 946
    const-string v0, "data"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 944
    :goto_0
    return v0
.end method

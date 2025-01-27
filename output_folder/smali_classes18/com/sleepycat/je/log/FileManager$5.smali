.class Lcom/sleepycat/je/log/FileManager$5;
.super Lcom/sleepycat/je/log/FileHandle;
.source "FileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/log/FileManager;->getFileHandle(J)Lcom/sleepycat/je/log/FileHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/log/FileManager;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/log/FileManager;Lcom/sleepycat/je/dbi/EnvironmentImpl;JLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/log/FileManager;
    .param p2, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p3, "fileNum"    # J
    .param p5, "label"    # Ljava/lang/String;

    .line 1323
    iput-object p1, p0, Lcom/sleepycat/je/log/FileManager$5;->this$0:Lcom/sleepycat/je/log/FileManager;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sleepycat/je/log/FileHandle;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public release()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1329
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/log/FileManager$5;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1332
    goto :goto_0

    .line 1330
    :catch_0
    move-exception v0

    .line 1333
    :goto_0
    return-void
.end method

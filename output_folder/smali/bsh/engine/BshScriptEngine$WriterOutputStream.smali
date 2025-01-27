.class Lbsh/engine/BshScriptEngine$WriterOutputStream;
.super Ljava/io/OutputStream;
.source "BshScriptEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsh/engine/BshScriptEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WriterOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lbsh/engine/BshScriptEngine;

.field writer:Ljava/io/Writer;


# direct methods
.method constructor <init>(Lbsh/engine/BshScriptEngine;Ljava/io/Writer;)V
    .locals 0
    .param p1, "this$0"    # Lbsh/engine/BshScriptEngine;
    .param p2, "writer"    # Ljava/io/Writer;

    .line 324
    iput-object p1, p0, Lbsh/engine/BshScriptEngine$WriterOutputStream;->this$0:Lbsh/engine/BshScriptEngine;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 325
    iput-object p2, p0, Lbsh/engine/BshScriptEngine$WriterOutputStream;->writer:Ljava/io/Writer;

    .line 326
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lbsh/engine/BshScriptEngine$WriterOutputStream;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 341
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lbsh/engine/BshScriptEngine$WriterOutputStream;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 336
    return-void
.end method

.method public write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lbsh/engine/BshScriptEngine$WriterOutputStream;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    .line 331
    return-void
.end method

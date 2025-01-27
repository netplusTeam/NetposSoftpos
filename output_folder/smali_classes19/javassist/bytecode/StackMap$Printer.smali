.class Ljavassist/bytecode/StackMap$Printer;
.super Ljavassist/bytecode/StackMap$Walker;
.source "StackMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/StackMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Printer"
.end annotation


# instance fields
.field private writer:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Ljavassist/bytecode/StackMap;Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "map"    # Ljavassist/bytecode/StackMap;
    .param p2, "out"    # Ljava/io/PrintWriter;

    .line 526
    invoke-direct {p0, p1}, Ljavassist/bytecode/StackMap$Walker;-><init>(Ljavassist/bytecode/StackMap;)V

    .line 527
    iput-object p2, p0, Ljavassist/bytecode/StackMap$Printer;->writer:Ljava/io/PrintWriter;

    .line 528
    return-void
.end method


# virtual methods
.method public locals(III)I
    .locals 3
    .param p1, "pos"    # I
    .param p2, "offset"    # I
    .param p3, "num"    # I

    .line 538
    iget-object v0, p0, Ljavassist/bytecode/StackMap$Printer;->writer:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  * offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 539
    invoke-super {p0, p1, p2, p3}, Ljavassist/bytecode/StackMap$Walker;->locals(III)I

    move-result v0

    return v0
.end method

.method public print()V
    .locals 4

    .line 531
    iget-object v0, p0, Ljavassist/bytecode/StackMap$Printer;->info:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 532
    .local v0, "num":I
    iget-object v1, p0, Ljavassist/bytecode/StackMap$Printer;->writer:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " entries"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p0}, Ljavassist/bytecode/StackMap$Printer;->visit()V

    .line 534
    return-void
.end method

.class public Ljavassist/bytecode/StackMap;
.super Ljavassist/bytecode/AttributeInfo;
.source "StackMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/bytecode/StackMap$Writer;,
        Ljavassist/bytecode/StackMap$Printer;,
        Ljavassist/bytecode/StackMap$NewRemover;,
        Ljavassist/bytecode/StackMap$SwitchShifter;,
        Ljavassist/bytecode/StackMap$Shifter;,
        Ljavassist/bytecode/StackMap$InsertLocal;,
        Ljavassist/bytecode/StackMap$SimpleCopy;,
        Ljavassist/bytecode/StackMap$Copier;,
        Ljavassist/bytecode/StackMap$Walker;
    }
.end annotation


# static fields
.field public static final DOUBLE:I = 0x3

.field public static final FLOAT:I = 0x2

.field public static final INTEGER:I = 0x1

.field public static final LONG:I = 0x4

.field public static final NULL:I = 0x5

.field public static final OBJECT:I = 0x7

.field public static final THIS:I = 0x6

.field public static final TOP:I = 0x0

.field public static final UNINIT:I = 0x8

.field public static final tag:Ljava/lang/String; = "StackMap"


# direct methods
.method constructor <init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V
    .locals 0
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "name_id"    # I
    .param p3, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    .line 59
    return-void
.end method

.method constructor <init>(Ljavassist/bytecode/ConstPool;[B)V
    .locals 1
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "newInfo"    # [B

    .line 52
    const-string v0, "StackMap"

    invoke-direct {p0, p1, v0, p2}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

    .line 53
    return-void
.end method


# virtual methods
.method public copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;
    .locals 2
    .param p1, "newCp"    # Ljavassist/bytecode/ConstPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/ConstPool;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljavassist/bytecode/AttributeInfo;"
        }
    .end annotation

    .line 118
    .local p2, "classnames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljavassist/bytecode/StackMap$Copier;

    invoke-direct {v0, p0, p1, p2}, Ljavassist/bytecode/StackMap$Copier;-><init>(Ljavassist/bytecode/StackMap;Ljavassist/bytecode/ConstPool;Ljava/util/Map;)V

    .line 119
    .local v0, "copier":Ljavassist/bytecode/StackMap$Copier;
    invoke-virtual {v0}, Ljavassist/bytecode/StackMap$Copier;->visit()V

    .line 120
    invoke-virtual {v0}, Ljavassist/bytecode/StackMap$Copier;->getStackMap()Ljavassist/bytecode/StackMap;

    move-result-object v1

    return-object v1
.end method

.method public insertLocal(III)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "tag"    # I
    .param p3, "classInfo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 294
    new-instance v0, Ljavassist/bytecode/StackMap$InsertLocal;

    invoke-direct {v0, p0, p1, p2, p3}, Ljavassist/bytecode/StackMap$InsertLocal;-><init>(Ljavassist/bytecode/StackMap;III)V

    invoke-virtual {v0}, Ljavassist/bytecode/StackMap$InsertLocal;->doit()[B

    move-result-object v0

    .line 295
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Ljavassist/bytecode/StackMap;->set([B)V

    .line 296
    return-void
.end method

.method public numOfEntries()I
    .locals 2

    .line 65
    iget-object v0, p0, Ljavassist/bytecode/StackMap;->info:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    return v0
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintWriter;

    .line 519
    new-instance v0, Ljavassist/bytecode/StackMap$Printer;

    invoke-direct {v0, p0, p1}, Ljavassist/bytecode/StackMap$Printer;-><init>(Ljavassist/bytecode/StackMap;Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljavassist/bytecode/StackMap$Printer;->print()V

    .line 520
    return-void
.end method

.method public removeNew(I)V
    .locals 1
    .param p1, "where"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 455
    new-instance v0, Ljavassist/bytecode/StackMap$NewRemover;

    invoke-direct {v0, p0, p1}, Ljavassist/bytecode/StackMap$NewRemover;-><init>(Ljavassist/bytecode/StackMap;I)V

    invoke-virtual {v0}, Ljavassist/bytecode/StackMap$NewRemover;->doit()[B

    move-result-object v0

    .line 456
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Ljavassist/bytecode/StackMap;->set([B)V

    .line 457
    return-void
.end method

.method shiftForSwitch(II)V
    .locals 1
    .param p1, "where"    # I
    .param p2, "gapSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 422
    new-instance v0, Ljavassist/bytecode/StackMap$SwitchShifter;

    invoke-direct {v0, p0, p1, p2}, Ljavassist/bytecode/StackMap$SwitchShifter;-><init>(Ljavassist/bytecode/StackMap;II)V

    invoke-virtual {v0}, Ljavassist/bytecode/StackMap$SwitchShifter;->visit()V

    .line 423
    return-void
.end method

.method shiftPc(IIZ)V
    .locals 1
    .param p1, "where"    # I
    .param p2, "gapSize"    # I
    .param p3, "exclusive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 389
    new-instance v0, Ljavassist/bytecode/StackMap$Shifter;

    invoke-direct {v0, p0, p1, p2, p3}, Ljavassist/bytecode/StackMap$Shifter;-><init>(Ljavassist/bytecode/StackMap;IIZ)V

    invoke-virtual {v0}, Ljavassist/bytecode/StackMap$Shifter;->visit()V

    .line 390
    return-void
.end method

.class public Ljavassist/bytecode/StackMapTable;
.super Ljavassist/bytecode/AttributeInfo;
.source "StackMapTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/bytecode/StackMapTable$NewRemover;,
        Ljavassist/bytecode/StackMapTable$SwitchShifter;,
        Ljavassist/bytecode/StackMapTable$Shifter;,
        Ljavassist/bytecode/StackMapTable$OffsetShifter;,
        Ljavassist/bytecode/StackMapTable$Printer;,
        Ljavassist/bytecode/StackMapTable$Writer;,
        Ljavassist/bytecode/StackMapTable$InsertLocal;,
        Ljavassist/bytecode/StackMapTable$Copier;,
        Ljavassist/bytecode/StackMapTable$SimpleCopy;,
        Ljavassist/bytecode/StackMapTable$Walker;,
        Ljavassist/bytecode/StackMapTable$RuntimeCopyException;
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

.field public static final tag:Ljava/lang/String; = "StackMapTable"


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

    .line 54
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    .line 55
    return-void
.end method

.method constructor <init>(Ljavassist/bytecode/ConstPool;[B)V
    .locals 1
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "newInfo"    # [B

    .line 48
    const-string v0, "StackMapTable"

    invoke-direct {p0, p1, v0, p2}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

    .line 49
    return-void
.end method

.method public static typeTagOf(C)I
    .locals 1
    .param p0, "descriptor"    # C

    .line 487
    sparse-switch p0, :sswitch_data_0

    .line 499
    const/4 v0, 0x1

    return v0

    .line 496
    :sswitch_0
    const/4 v0, 0x7

    return v0

    .line 493
    :sswitch_1
    const/4 v0, 0x4

    return v0

    .line 491
    :sswitch_2
    const/4 v0, 0x2

    return v0

    .line 489
    :sswitch_3
    const/4 v0, 0x3

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_3
        0x46 -> :sswitch_2
        0x4a -> :sswitch_1
        0x4c -> :sswitch_0
        0x5b -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;
    .locals 4
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/StackMapTable$RuntimeCopyException;
        }
    .end annotation

    .line 71
    .local p2, "classnames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v0, Ljavassist/bytecode/StackMapTable;

    new-instance v1, Ljavassist/bytecode/StackMapTable$Copier;

    iget-object v2, p0, Ljavassist/bytecode/StackMapTable;->constPool:Ljavassist/bytecode/ConstPool;

    iget-object v3, p0, Ljavassist/bytecode/StackMapTable;->info:[B

    invoke-direct {v1, v2, v3, p1, p2}, Ljavassist/bytecode/StackMapTable$Copier;-><init>(Ljavassist/bytecode/ConstPool;[BLjavassist/bytecode/ConstPool;Ljava/util/Map;)V

    .line 72
    invoke-virtual {v1}, Ljavassist/bytecode/StackMapTable$Copier;->doit()[B

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljavassist/bytecode/StackMapTable;-><init>(Ljavassist/bytecode/ConstPool;[B)V
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    return-object v0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljavassist/bytecode/BadBytecode;
    new-instance v1, Ljavassist/bytecode/StackMapTable$RuntimeCopyException;

    const-string v2, "bad bytecode. fatal?"

    invoke-direct {v1, v2}, Ljavassist/bytecode/StackMapTable$RuntimeCopyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public insertLocal(III)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "tag"    # I
    .param p3, "classInfo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 473
    new-instance v0, Ljavassist/bytecode/StackMapTable$InsertLocal;

    invoke-virtual {p0}, Ljavassist/bytecode/StackMapTable;->get()[B

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Ljavassist/bytecode/StackMapTable$InsertLocal;-><init>([BIII)V

    invoke-virtual {v0}, Ljavassist/bytecode/StackMapTable$InsertLocal;->doit()[B

    move-result-object v0

    .line 474
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Ljavassist/bytecode/StackMapTable;->set([B)V

    .line 475
    return-void
.end method

.method public println(Ljava/io/PrintStream;)V
    .locals 2
    .param p1, "ps"    # Ljava/io/PrintStream;

    .line 719
    new-instance v0, Ljava/io/PrintWriter;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    invoke-static {p0, v0}, Ljavassist/bytecode/StackMapTable$Printer;->print(Ljavassist/bytecode/StackMapTable;Ljava/io/PrintWriter;)V

    .line 720
    return-void
.end method

.method public println(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "w"    # Ljava/io/PrintWriter;

    .line 710
    invoke-static {p0, p1}, Ljavassist/bytecode/StackMapTable$Printer;->print(Ljavassist/bytecode/StackMapTable;Ljava/io/PrintWriter;)V

    .line 711
    return-void
.end method

.method public removeNew(I)V
    .locals 3
    .param p1, "where"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1026
    :try_start_0
    new-instance v0, Ljavassist/bytecode/StackMapTable$NewRemover;

    invoke-virtual {p0}, Ljavassist/bytecode/StackMapTable;->get()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljavassist/bytecode/StackMapTable$NewRemover;-><init>([BI)V

    invoke-virtual {v0}, Ljavassist/bytecode/StackMapTable$NewRemover;->doit()[B

    move-result-object v0

    .line 1027
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Ljavassist/bytecode/StackMapTable;->set([B)V
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    .line 1031
    .end local v0    # "data":[B
    nop

    .line 1032
    return-void

    .line 1029
    :catch_0
    move-exception v0

    .line 1030
    .local v0, "e":Ljavassist/bytecode/BadBytecode;
    new-instance v1, Ljavassist/CannotCompileException;

    const-string v2, "bad stack map table"

    invoke-direct {v1, v2, v0}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
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

    .line 950
    new-instance v0, Ljavassist/bytecode/StackMapTable$SwitchShifter;

    invoke-direct {v0, p0, p1, p2}, Ljavassist/bytecode/StackMapTable$SwitchShifter;-><init>(Ljavassist/bytecode/StackMapTable;II)V

    invoke-virtual {v0}, Ljavassist/bytecode/StackMapTable$SwitchShifter;->doit()V

    .line 951
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

    .line 825
    new-instance v0, Ljavassist/bytecode/StackMapTable$OffsetShifter;

    invoke-direct {v0, p0, p1, p2}, Ljavassist/bytecode/StackMapTable$OffsetShifter;-><init>(Ljavassist/bytecode/StackMapTable;II)V

    invoke-virtual {v0}, Ljavassist/bytecode/StackMapTable$OffsetShifter;->parse()V

    .line 826
    new-instance v0, Ljavassist/bytecode/StackMapTable$Shifter;

    invoke-direct {v0, p0, p1, p2, p3}, Ljavassist/bytecode/StackMapTable$Shifter;-><init>(Ljavassist/bytecode/StackMapTable;IIZ)V

    invoke-virtual {v0}, Ljavassist/bytecode/StackMapTable$Shifter;->doit()V

    .line 827
    return-void
.end method

.method write(Ljava/io/DataOutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-super {p0, p1}, Ljavassist/bytecode/AttributeInfo;->write(Ljava/io/DataOutputStream;)V

    .line 98
    return-void
.end method

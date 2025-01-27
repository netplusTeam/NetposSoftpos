.class public Lorg/jpos/iso/ISOMsg;
.super Lorg/jpos/iso/ISOComponent;
.source "ISOMsg.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/jpos/util/Loggeable;
.implements Ljava/io/Externalizable;


# static fields
.field public static final INCOMING:I = 0x1

.field public static final OUTGOING:I = 0x2

.field private static final serialVersionUID:J = 0x3bc2e139c1dbe257L


# instance fields
.field protected direction:I

.field protected dirty:Z

.field protected fieldNumber:I

.field protected fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected header:Lorg/jpos/iso/ISOHeader;

.field protected maxField:I

.field protected maxFieldDirty:Z

.field protected packager:Lorg/jpos/iso/ISOPackager;

.field private sourceRef:Ljava/lang/ref/WeakReference;

.field protected trailer:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Lorg/jpos/iso/ISOComponent;-><init>()V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lorg/jpos/iso/ISOMsg;->fieldNumber:I

    .line 59
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Lorg/jpos/iso/ISOMsg;->fields:Ljava/util/Map;

    .line 60
    iput v0, p0, Lorg/jpos/iso/ISOMsg;->maxField:I

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jpos/iso/ISOMsg;->dirty:Z

    .line 62
    iput-boolean v0, p0, Lorg/jpos/iso/ISOMsg;->maxFieldDirty:Z

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lorg/jpos/iso/ISOMsg;->direction:I

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/ISOMsg;->header:Lorg/jpos/iso/ISOHeader;

    .line 65
    iput-object v0, p0, Lorg/jpos/iso/ISOMsg;->trailer:[B

    .line 66
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "fieldNumber"    # I

    .line 72
    invoke-direct {p0}, Lorg/jpos/iso/ISOMsg;-><init>()V

    .line 73
    invoke-virtual {p0, p1}, Lorg/jpos/iso/ISOMsg;->setFieldNumber(I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "mti"    # Ljava/lang/String;

    .line 91
    invoke-direct {p0}, Lorg/jpos/iso/ISOMsg;-><init>()V

    .line 93
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jpos/iso/ISOMsg;->setMTI(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 97
    :goto_0
    return-void
.end method

.method private parseInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 1151
    const-string v0, "0x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method

.method private recalcMaxField()V
    .locals 5

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lorg/jpos/iso/ISOMsg;->maxField:I

    .line 185
    iget-object v1, p0, Lorg/jpos/iso/ISOMsg;->fields:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 186
    .local v2, "obj":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 187
    iget v3, p0, Lorg/jpos/iso/ISOMsg;->maxField:I

    move-object v4, v2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lorg/jpos/iso/ISOMsg;->maxField:I

    .line 188
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 189
    :cond_1
    iput-boolean v0, p0, Lorg/jpos/iso/ISOMsg;->maxFieldDirty:Z

    .line 190
    return-void
.end method

.method private writeExternal(Ljava/io/ObjectOutput;CLorg/jpos/iso/ISOComponent;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .param p2, "b"    # C
    .param p3, "c"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1147
    invoke-interface {p1, p2}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 1148
    move-object v0, p3

    check-cast v0, Ljava/io/Externalizable;

    invoke-interface {v0, p1}, Ljava/io/Externalizable;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 1149
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 6

    .line 762
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/iso/ISOMsg;

    .line 763
    .local v0, "m":Lorg/jpos/iso/ISOMsg;
    iget-object v1, p0, Lorg/jpos/iso/ISOMsg;->fields:Ljava/util/Map;

    check-cast v1, Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TreeMap;

    iput-object v1, v0, Lorg/jpos/iso/ISOMsg;->fields:Ljava/util/Map;

    .line 764
    iget-object v1, p0, Lorg/jpos/iso/ISOMsg;->header:Lorg/jpos/iso/ISOHeader;

    if-eqz v1, :cond_0

    .line 765
    invoke-interface {v1}, Lorg/jpos/iso/ISOHeader;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jpos/iso/ISOHeader;

    iput-object v1, v0, Lorg/jpos/iso/ISOMsg;->header:Lorg/jpos/iso/ISOHeader;

    .line 766
    :cond_0
    iget-object v1, p0, Lorg/jpos/iso/ISOMsg;->trailer:[B

    if-eqz v1, :cond_1

    .line 767
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lorg/jpos/iso/ISOMsg;->trailer:[B

    .line 768
    :cond_1
    iget-object v1, p0, Lorg/jpos/iso/ISOMsg;->fields:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 769
    .local v2, "k":Ljava/lang/Integer;
    iget-object v3, v0, Lorg/jpos/iso/ISOMsg;->fields:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jpos/iso/ISOComponent;

    .line 770
    .local v3, "c":Lorg/jpos/iso/ISOComponent;
    instance-of v4, v3, Lorg/jpos/iso/ISOMsg;

    if-eqz v4, :cond_2

    .line 771
    iget-object v4, v0, Lorg/jpos/iso/ISOMsg;->fields:Ljava/util/Map;

    move-object v5, v3

    check-cast v5, Lorg/jpos/iso/ISOMsg;

    invoke-virtual {v5}, Lorg/jpos/iso/ISOMsg;->clone()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    .end local v2    # "k":Ljava/lang/Integer;
    .end local v3    # "c":Lorg/jpos/iso/ISOComponent;
    :cond_2
    goto :goto_0

    .line 773
    :cond_3
    return-object v0

    .line 774
    .end local v0    # "m":Lorg/jpos/iso/ISOMsg;
    :catch_0
    move-exception v0

    .line 775
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public varargs clone([I)Ljava/lang/Object;
    .locals 6
    .param p1, "fields"    # [I

    .line 787
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/iso/ISOMsg;

    .line 788
    .local v0, "m":Lorg/jpos/iso/ISOMsg;
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, v0, Lorg/jpos/iso/ISOMsg;->fields:Ljava/util/Map;

    .line 789
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p1, v2

    .line 790
    .local v3, "field":I
    invoke-virtual {p0, v3}, Lorg/jpos/iso/ISOMsg;->hasField(I)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_1

    .line 792
    :try_start_1
    invoke-virtual {p0, v3}, Lorg/jpos/iso/ISOMsg;->getComponent(I)Lorg/jpos/iso/ISOComponent;

    move-result-object v4

    .line 793
    .local v4, "c":Lorg/jpos/iso/ISOComponent;
    instance-of v5, v4, Lorg/jpos/iso/ISOMsg;

    if-eqz v5, :cond_0

    .line 794
    move-object v5, v4

    check-cast v5, Lorg/jpos/iso/ISOMsg;

    invoke-virtual {v5}, Lorg/jpos/iso/ISOMsg;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jpos/iso/ISOMsg;

    invoke-virtual {v0, v5}, Lorg/jpos/iso/ISOMsg;->set(Lorg/jpos/iso/ISOComponent;)V

    goto :goto_1

    .line 796
    :cond_0
    invoke-virtual {v0, v4}, Lorg/jpos/iso/ISOMsg;->set(Lorg/jpos/iso/ISOComponent;)V
    :try_end_1
    .catch Lorg/jpos/iso/ISOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 800
    .end local v4    # "c":Lorg/jpos/iso/ISOComponent;
    :goto_1
    goto :goto_2

    .line 798
    :catch_0
    move-exception v4

    .line 789
    .end local v3    # "field":I
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 803
    :cond_2
    return-object v0

    .line 804
    .end local v0    # "m":Lorg/jpos/iso/ISOMsg;
    :catch_1
    move-exception v0

    .line 805
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public varargs clone([Ljava/lang/String;)Lorg/jpos/iso/ISOMsg;
    .locals 6
    .param p1, "fpaths"    # [Ljava/lang/String;

    .line 816
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/iso/ISOMsg;

    .line 817
    .local v0, "m":Lorg/jpos/iso/ISOMsg;
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, v0, Lorg/jpos/iso/ISOMsg;->fields:Ljava/util/Map;

    .line 818
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 820
    .local v3, "fpath":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0, v3}, Lorg/jpos/iso/ISOMsg;->getComponent(Ljava/lang/String;)Lorg/jpos/iso/ISOComponent;

    move-result-object v4

    .line 821
    .local v4, "component":Lorg/jpos/iso/ISOComponent;
    instance-of v5, v4, Lorg/jpos/iso/ISOMsg;

    if-eqz v5, :cond_0

    .line 822
    move-object v5, v4

    check-cast v5, Lorg/jpos/iso/ISOMsg;

    invoke-virtual {v5}, Lorg/jpos/iso/ISOMsg;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jpos/iso/ISOMsg;

    invoke-virtual {v0, v3, v5}, Lorg/jpos/iso/ISOMsg;->set(Ljava/lang/String;Lorg/jpos/iso/ISOComponent;)V

    goto :goto_1

    .line 823
    :cond_0
    if-eqz v4, :cond_1

    .line 824
    invoke-virtual {v0, v3, v4}, Lorg/jpos/iso/ISOMsg;->set(Ljava/lang/String;Lorg/jpos/iso/ISOComponent;)V
    :try_end_1
    .catch Lorg/jpos/iso/ISOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 828
    .end local v4    # "component":Lorg/jpos/iso/ISOComponent;
    :cond_1
    :goto_1
    goto :goto_2

    .line 826
    :catch_0
    move-exception v4

    .line 818
    .end local v3    # "fpath":Ljava/lang/String;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 830
    :cond_2
    return-object v0

    .line 831
    .end local v0    # "m":Lorg/jpos/iso/ISOMsg;
    :catch_1
    move-exception v0

    .line 832
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public dump(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 7
    .param p1, "p"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "isomsg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 501
    iget v0, p0, Lorg/jpos/iso/ISOMsg;->direction:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 506
    :pswitch_0
    const-string v0, " direction=\"outgoing\""

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 503
    :pswitch_1
    const-string v0, " direction=\"incoming\""

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 504
    nop

    .line 509
    :goto_0
    iget v0, p0, Lorg/jpos/iso/ISOMsg;->fieldNumber:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " id=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lorg/jpos/iso/ISOMsg;->fieldNumber:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 511
    :cond_0
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 512
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 513
    .local v2, "newIndent":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jpos/iso/ISOMsg;->getPackager()Lorg/jpos/iso/ISOPackager;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 514
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<!-- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 516
    invoke-virtual {p0}, Lorg/jpos/iso/ISOMsg;->getPackager()Lorg/jpos/iso/ISOPackager;

    move-result-object v4

    invoke-interface {v4}, Lorg/jpos/iso/ISOPackager;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 514
    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 519
    :cond_1
    iget-object v3, p0, Lorg/jpos/iso/ISOMsg;->header:Lorg/jpos/iso/ISOHeader;

    instance-of v4, v3, Lorg/jpos/util/Loggeable;

    if-eqz v4, :cond_2

    .line 520
    check-cast v3, Lorg/jpos/util/Loggeable;

    invoke-interface {v3, p1, v2}, Lorg/jpos/util/Loggeable;->dump(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 522
    :cond_2
    iget-object v3, p0, Lorg/jpos/iso/ISOMsg;->fields:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 523
    .local v4, "i":I
    if-ltz v4, :cond_3

    .line 524
    iget-object v5, p0, Lorg/jpos/iso/ISOMsg;->fields:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jpos/iso/ISOComponent;

    move-object v6, v5

    .local v6, "c":Lorg/jpos/iso/ISOComponent;
    if-eqz v5, :cond_3

    .line 525
    invoke-virtual {v6, p1, v2}, Lorg/jpos/iso/ISOComponent;->dump(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 527
    .end local v4    # "i":I
    .end local v6    # "c":Lorg/jpos/iso/ISOComponent;
    :cond_3
    goto :goto_1

    .line 529
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 530
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getBytes(I)[B
    .locals 4
    .param p1, "fldno"    # I

    .line 645
    const/4 v0, 0x0

    .line 646
    .local v0, "b":[B
    invoke-virtual {p0, p1}, Lorg/jpos/iso/ISOMsg;->hasField(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 647
    invoke-virtual {p0, p1}, Lorg/jpos/iso/ISOMsg;->getValue(I)Ljava/lang/Object;

    move-result-object v1

    .line 648
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 649
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lorg/jpos/iso/ISOUtil;->CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    goto :goto_0

    .line 650
    :cond_0
    instance-of v2, v1, [B

    if-eqz v2, :cond_1

    .line 651
    move-object v2, v1

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    .line 653
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object v0
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 4
    .param p1, "fpath"    # Ljava/lang/String;

    .line 661
    const/4 v0, 0x0

    .line 663
    .local v0, "b":[B
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jpos/iso/ISOMsg;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 664
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 665
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lorg/jpos/iso/ISOUtil;->CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 666
    :cond_0
    instance-of v2, v1, [B

    if-eqz v2, :cond_1

    .line 667
    move-object v2, v1

    check-cast v2, [B

    check-cast v2, [B
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 670
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_1
    :goto_0
    nop

    .line 671
    return-object v0

    .line 668
    :catch_0
    move-exception v1

    .line 669
    .local v1, "ignored":Lorg/jpos/iso/ISOException;
    const/4 v2, 0x0

    return-object v2
.end method

.method public getChildren()Ljava/util/Map;
    .locals 1

    .line 456
    iget-object v0, p0, Lorg/jpos/iso/ISOMsg;->fields:Ljava/util/Map;

    check-cast v0, Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getComponent(I)Lorg/jpos/iso/ISOComponent;
    .locals 2
    .param p1, "fldno"    # I

    .line 537
    iget-object v0, p0, Lorg/jpos/iso/ISOMsg;->fields:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/iso/ISOComponent;

    return-object v0
.end method

.method public getComponent(Ljava/lang/String;)Lorg/jpos/iso/ISOComponent;
    .locals 5
    .param p1, "fpath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 588
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "."

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    .local v0, "st":Ljava/util/StringTokenizer;
    move-object v1, p0

    .line 592
    .local v1, "m":Lorg/jpos/iso/ISOMsg;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/jpos/iso/ISOMsg;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 593
    .local v2, "fldno":I
    invoke-virtual {v1, v2}, Lorg/jpos/iso/ISOMsg;->getComponent(I)Lorg/jpos/iso/ISOComponent;

    move-result-object v3

    .line 594
    .local v3, "obj":Lorg/jpos/iso/ISOComponent;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 595
    instance-of v4, v3, Lorg/jpos/iso/ISOMsg;

    if-eqz v4, :cond_0

    .line 596
    move-object v1, v3

    check-cast v1, Lorg/jpos/iso/ISOMsg;

    .line 602
    .end local v2    # "fldno":I
    goto :goto_0

    .line 603
    :cond_0
    return-object v3
.end method

.method public getComposite()Lorg/jpos/iso/ISOComponent;
    .locals 0

    .line 431
    return-object p0
.end method

.method public getDirection()I
    .locals 1

    .line 158
    iget v0, p0, Lorg/jpos/iso/ISOMsg;->direction:I

    return v0
.end method

.method public getFieldNumber()I
    .locals 1

    .line 924
    iget v0, p0, Lorg/jpos/iso/ISOMsg;->fieldNumber:I

    return v0
.end method

.method public getHeader()[B
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/jpos/iso/ISOMsg;->header:Lorg/jpos/iso/ISOHeader;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/jpos/iso/ISOHeader;->pack()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getISOHeader()Lorg/jpos/iso/ISOHeader;
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/jpos/iso/ISOMsg;->header:Lorg/jpos/iso/ISOHeader;

    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 881
    iget v0, p0, Lorg/jpos/iso/ISOMsg;->fieldNumber:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 882
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 883
    :cond_0
    new-instance v0, Lorg/jpos/iso/ISOException;

    const-string v1, "This is not a subField"

    invoke-direct {v0, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMTI()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 942
    invoke-virtual {p0}, Lorg/jpos/iso/ISOMsg;->isInner()Z

    move-result v0

    if-nez v0, :cond_1

    .line 944
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jpos/iso/ISOMsg;->hasField(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 946
    invoke-virtual {p0, v0}, Lorg/jpos/iso/ISOMsg;->getValue(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 945
    :cond_0
    new-instance v0, Lorg/jpos/iso/ISOException;

    const-string v1, "MTI not available"

    invoke-direct {v0, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 943
    :cond_1
    new-instance v0, Lorg/jpos/iso/ISOException;

    const-string v1, "can\'t getMTI on inner message"

    invoke-direct {v0, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMaxField()I
    .locals 1

    .line 179
    iget-boolean v0, p0, Lorg/jpos/iso/ISOMsg;->maxFieldDirty:Z

    if-eqz v0, :cond_0

    .line 180
    invoke-direct {p0}, Lorg/jpos/iso/ISOMsg;->recalcMaxField()V

    .line 181
    :cond_0
    iget v0, p0, Lorg/jpos/iso/ISOMsg;->maxField:I

    return v0
.end method

.method public getPackager()Lorg/jpos/iso/ISOPackager;
    .locals 1

    .line 201
    iget-object v0, p0, Lorg/jpos/iso/ISOMsg;->packager:Lorg/jpos/iso/ISOPackager;

    return-object v0
.end method

.method public getSource()Lorg/jpos/iso/ISOSource;
    .locals 1

    .line 1144
    iget-object v0, p0, Lorg/jpos/iso/ISOMsg;->sourceRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/iso/ISOSource;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3
    .param p1, "fldno"    # I

    .line 611
    const/4 v0, 0x0

    .line 612
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lorg/jpos/iso/ISOMsg;->hasField(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 613
    invoke-virtual {p0, p1}, Lorg/jpos/iso/ISOMsg;->getValue(I)Ljava/lang/Object;

    move-result-object v1

    .line 614
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 615
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 616
    :cond_0
    instance-of v2, v1, [B

    if-eqz v2, :cond_1

    .line 617
    move-object v2, v1

    check-cast v2, [B

    check-cast v2, [B

    invoke-static {v2}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v0

    .line 619
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "fpath"    # Ljava/lang/String;

    .line 627
    const/4 v0, 0x0

    .line 629
    .local v0, "s":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jpos/iso/ISOMsg;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 630
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 631
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    goto :goto_0

    .line 632
    :cond_0
    instance-of v2, v1, [B

    if-eqz v2, :cond_1

    .line 633
    move-object v2, v1

    check-cast v2, [B

    check-cast v2, [B

    invoke-static {v2}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 636
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_1
    :goto_0
    nop

    .line 637
    return-object v0

    .line 634
    :catch_0
    move-exception v1

    .line 635
    .local v1, "e":Lorg/jpos/iso/ISOException;
    const/4 v2, 0x0

    return-object v2
.end method

.method public getTrailer()[B
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/jpos/iso/ISOMsg;->trailer:[B

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0

    .line 887
    return-object p0
.end method

.method public getValue(I)Ljava/lang/Object;
    .locals 3
    .param p1, "fldno"    # I

    .line 545
    invoke-virtual {p0, p1}, Lorg/jpos/iso/ISOMsg;->getComponent(I)Lorg/jpos/iso/ISOComponent;

    move-result-object v0

    .line 547
    .local v0, "c":Lorg/jpos/iso/ISOComponent;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 548
    :catch_0
    move-exception v2

    .line 549
    .local v2, "ex":Lorg/jpos/iso/ISOException;
    return-object v1

    .line 547
    .end local v2    # "ex":Lorg/jpos/iso/ISOException;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p1, "fpath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 559
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "."

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    .local v0, "st":Ljava/util/StringTokenizer;
    move-object v1, p0

    .line 563
    .local v1, "m":Lorg/jpos/iso/ISOMsg;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/jpos/iso/ISOMsg;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 564
    .local v2, "fldno":I
    invoke-virtual {v1, v2}, Lorg/jpos/iso/ISOMsg;->getValue(I)Ljava/lang/Object;

    move-result-object v3

    .line 565
    .local v3, "obj":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 568
    goto :goto_1

    .line 570
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 571
    instance-of v4, v3, Lorg/jpos/iso/ISOMsg;

    if-eqz v4, :cond_1

    .line 572
    move-object v1, v3

    check-cast v1, Lorg/jpos/iso/ISOMsg;

    .line 578
    .end local v2    # "fldno":I
    goto :goto_0

    .line 575
    .restart local v2    # "fldno":I
    :cond_1
    new-instance v4, Lorg/jpos/iso/ISOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid path \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 579
    .end local v2    # "fldno":I
    :cond_2
    :goto_1
    return-object v3
.end method

.method public hasAny([I)Z
    .locals 5
    .param p1, "fields"    # [I

    .line 699
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    .line 700
    .local v3, "field":I
    invoke-virtual {p0, v3}, Lorg/jpos/iso/ISOMsg;->hasField(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 701
    const/4 v0, 0x1

    return v0

    .line 699
    .end local v3    # "field":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 702
    :cond_1
    return v1
.end method

.method public varargs hasAny([Ljava/lang/String;)Z
    .locals 5
    .param p1, "fields"    # [Ljava/lang/String;

    .line 710
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 711
    .local v3, "field":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/jpos/iso/ISOMsg;->hasField(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 712
    const/4 v0, 0x1

    return v0

    .line 710
    .end local v3    # "field":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 713
    :cond_1
    return v1
.end method

.method public hasField(I)Z
    .locals 2
    .param p1, "fldno"    # I

    .line 679
    iget-object v0, p0, Lorg/jpos/iso/ISOMsg;->fields:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasField(Ljava/lang/String;)Z
    .locals 5
    .param p1, "fpath"    # Ljava/lang/String;

    .line 722
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "."

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    .local v0, "st":Ljava/util/StringTokenizer;
    move-object v1, p0

    .line 725
    .local v1, "m":Lorg/jpos/iso/ISOMsg;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/jpos/iso/ISOMsg;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 726
    .local v2, "fldno":I
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 727
    invoke-virtual {v1, v2}, Lorg/jpos/iso/ISOMsg;->getValue(I)Ljava/lang/Object;

    move-result-object v3

    .line 728
    .local v3, "obj":Ljava/lang/Object;
    instance-of v4, v3, Lorg/jpos/iso/ISOMsg;

    if-eqz v4, :cond_0

    .line 729
    move-object v1, v3

    check-cast v1, Lorg/jpos/iso/ISOMsg;

    .line 735
    .end local v3    # "obj":Ljava/lang/Object;
    nop

    .line 738
    .end local v2    # "fldno":I
    goto :goto_0

    .line 733
    .restart local v2    # "fldno":I
    .restart local v3    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v4, 0x0

    return v4

    .line 736
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v1, v2}, Lorg/jpos/iso/ISOMsg;->hasField(I)Z

    move-result v3

    return v3
.end method

.method public hasFields()Z
    .locals 1

    .line 744
    iget-object v0, p0, Lorg/jpos/iso/ISOMsg;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasFields([I)Z
    .locals 5
    .param p1, "fields"    # [I

    .line 687
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    .line 688
    .local v3, "field":I
    invoke-virtual {p0, v3}, Lorg/jpos/iso/ISOMsg;->hasField(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 689
    return v1

    .line 687
    .end local v3    # "field":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 690
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public hasMTI()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 932
    invoke-virtual {p0}, Lorg/jpos/iso/ISOMsg;->isInner()Z

    move-result v0

    if-nez v0, :cond_0

    .line 935
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jpos/iso/ISOMsg;->hasField(I)Z

    move-result v0

    return v0

    .line 933
    :cond_0
    new-instance v0, Lorg/jpos/iso/ISOException;

    const-string v1, "can\'t hasMTI on inner message"

    invoke-direct {v0, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isIncoming()Z
    .locals 2

    .line 165
    iget v0, p0, Lorg/jpos/iso/ISOMsg;->direction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isInner()Z
    .locals 2

    .line 893
    iget v0, p0, Lorg/jpos/iso/ISOMsg;->fieldNumber:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOutgoing()Z
    .locals 2

    .line 172
    iget v0, p0, Lorg/jpos/iso/ISOMsg;->direction:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRequest()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 954
    invoke-virtual {p0}, Lorg/jpos/iso/ISOMsg;->getMTI()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v0

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isResponse()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 961
    invoke-virtual {p0}, Lorg/jpos/iso/ISOMsg;->isRequest()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isRetransmission()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 968
    invoke-virtual {p0}, Lorg/jpos/iso/ISOMsg;->getMTI()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x31

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public merge(Lorg/jpos/iso/ISOMsg;)V
    .locals 3
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;

    .line 845
    iget-object v0, p1, Lorg/jpos/iso/ISOMsg;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 847
    .local v1, "i":I
    if-ltz v1, :cond_0

    :try_start_0
    invoke-virtual {p1, v1}, Lorg/jpos/iso/ISOMsg;->hasField(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 848
    invoke-virtual {p1, v1}, Lorg/jpos/iso/ISOMsg;->getComponent(I)Lorg/jpos/iso/ISOComponent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jpos/iso/ISOMsg;->set(Lorg/jpos/iso/ISOComponent;)V
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 849
    :catch_0
    move-exception v2

    goto :goto_2

    .line 851
    :cond_0
    :goto_1
    nop

    .line 852
    .end local v1    # "i":I
    :goto_2
    goto :goto_0

    .line 853
    :cond_1
    return-void
.end method

.method public move(II)V
    .locals 1
    .param p1, "oldFieldNumber"    # I
    .param p2, "newFieldNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 913
    invoke-virtual {p0, p1}, Lorg/jpos/iso/ISOMsg;->getComponent(I)Lorg/jpos/iso/ISOComponent;

    move-result-object v0

    .line 914
    .local v0, "c":Lorg/jpos/iso/ISOComponent;
    invoke-virtual {p0, p1}, Lorg/jpos/iso/ISOMsg;->unset(I)V

    .line 915
    if-eqz v0, :cond_0

    .line 916
    invoke-virtual {v0, p2}, Lorg/jpos/iso/ISOComponent;->setFieldNumber(I)V

    .line 917
    invoke-virtual {p0, v0}, Lorg/jpos/iso/ISOMsg;->set(Lorg/jpos/iso/ISOComponent;)V

    goto :goto_0

    .line 919
    :cond_0
    invoke-virtual {p0, p2}, Lorg/jpos/iso/ISOMsg;->unset(I)V

    .line 920
    :goto_0
    return-void
.end method

.method public pack()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 465
    monitor-enter p0

    .line 466
    :try_start_0
    invoke-virtual {p0}, Lorg/jpos/iso/ISOMsg;->recalcBitMap()V

    .line 467
    iget-object v0, p0, Lorg/jpos/iso/ISOMsg;->packager:Lorg/jpos/iso/ISOPackager;

    invoke-interface {v0, p0}, Lorg/jpos/iso/ISOPackager;->pack(Lorg/jpos/iso/ISOComponent;)[B

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 468
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected readDirection(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1054
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    iput v0, p0, Lorg/jpos/iso/ISOMsg;->direction:I

    .line 1055
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1090
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    .line 1091
    invoke-interface {p1}, Ljava/io/ObjectInput;->readShort()S

    move-result v0

    iput v0, p0, Lorg/jpos/iso/ISOMsg;->fieldNumber:I

    .line 1095
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    move v1, v0

    .local v1, "fieldType":B
    const/16 v2, 0x45

    if-eq v0, v2, :cond_1

    .line 1096
    const/4 v0, 0x0

    .line 1097
    .local v0, "c":Lorg/jpos/iso/ISOComponent;
    sparse-switch v1, :sswitch_data_0

    .line 1120
    new-instance v2, Ljava/io/IOException;

    goto :goto_2

    .line 1114
    :sswitch_0
    invoke-virtual {p0, p1}, Lorg/jpos/iso/ISOMsg;->readPackager(Ljava/io/ObjectInput;)V

    .line 1115
    goto :goto_1

    .line 1108
    :sswitch_1
    new-instance v2, Lorg/jpos/iso/ISOMsg;

    invoke-direct {v2}, Lorg/jpos/iso/ISOMsg;-><init>()V

    move-object v0, v2

    .line 1109
    goto :goto_1

    .line 1111
    :sswitch_2
    invoke-virtual {p0, p1}, Lorg/jpos/iso/ISOMsg;->readHeader(Ljava/io/ObjectInput;)V

    .line 1112
    goto :goto_1

    .line 1099
    :sswitch_3
    new-instance v2, Lorg/jpos/iso/ISOField;

    invoke-direct {v2}, Lorg/jpos/iso/ISOField;-><init>()V

    move-object v0, v2

    .line 1100
    goto :goto_1

    .line 1117
    :sswitch_4
    invoke-virtual {p0, p1}, Lorg/jpos/iso/ISOMsg;->readDirection(Ljava/io/ObjectInput;)V

    .line 1118
    goto :goto_1

    .line 1105
    :sswitch_5
    new-instance v2, Lorg/jpos/iso/ISOBinaryField;

    invoke-direct {v2}, Lorg/jpos/iso/ISOBinaryField;-><init>()V

    move-object v0, v2

    .line 1106
    goto :goto_1

    .line 1102
    :sswitch_6
    new-instance v2, Lorg/jpos/iso/ISOAmount;

    invoke-direct {v2}, Lorg/jpos/iso/ISOAmount;-><init>()V

    move-object v0, v2

    .line 1103
    nop

    .line 1122
    :goto_1
    if-eqz v0, :cond_0

    .line 1123
    move-object v2, v0

    check-cast v2, Ljava/io/Externalizable;

    invoke-interface {v2, p1}, Ljava/io/Externalizable;->readExternal(Ljava/io/ObjectInput;)V

    .line 1124
    invoke-virtual {p0, v0}, Lorg/jpos/iso/ISOMsg;->set(Lorg/jpos/iso/ISOComponent;)V

    goto :goto_0

    .line 1120
    :goto_2
    const-string v3, "malformed ISOMsg"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "in":Ljava/io/ObjectInput;
    throw v2
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1130
    .end local v0    # "c":Lorg/jpos/iso/ISOComponent;
    .restart local p1    # "in":Ljava/io/ObjectInput;
    :cond_1
    nop

    .line 1131
    return-void

    .line 1128
    .end local v1    # "fieldType":B
    :catch_0
    move-exception v0

    .line 1129
    .local v0, "e":Lorg/jpos/iso/ISOException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/jpos/iso/ISOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_6
        0x42 -> :sswitch_5
        0x44 -> :sswitch_4
        0x46 -> :sswitch_3
        0x48 -> :sswitch_2
        0x4d -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method protected readHeader(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1023
    invoke-interface {p1}, Ljava/io/ObjectInput;->readShort()S

    move-result v0

    new-array v0, v0, [B

    .line 1024
    .local v0, "b":[B
    invoke-interface {p1, v0}, Ljava/io/ObjectInput;->readFully([B)V

    .line 1025
    invoke-virtual {p0, v0}, Lorg/jpos/iso/ISOMsg;->setHeader([B)V

    .line 1026
    return-void
.end method

.method protected readPackager(Ljava/io/ObjectInput;)V
    .locals 3
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1036
    invoke-interface {p1}, Ljava/io/ObjectInput;->readShort()S

    move-result v0

    new-array v0, v0, [B

    .line 1037
    .local v0, "b":[B
    invoke-interface {p1, v0}, Ljava/io/ObjectInput;->readFully([B)V

    .line 1039
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1040
    .local v1, "mypClass":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jpos/iso/ISOPackager;

    .line 1041
    .local v2, "myp":Lorg/jpos/iso/ISOPackager;
    invoke-virtual {p0, v2}, Lorg/jpos/iso/ISOMsg;->setPackager(Lorg/jpos/iso/ISOPackager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1044
    .end local v1    # "mypClass":Ljava/lang/Class;
    .end local v2    # "myp":Lorg/jpos/iso/ISOPackager;
    goto :goto_0

    .line 1042
    :catch_0
    move-exception v1

    .line 1043
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/jpos/iso/ISOMsg;->setPackager(Lorg/jpos/iso/ISOPackager;)V

    .line 1046
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public recalcBitMap()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 438
    iget-boolean v0, p0, Lorg/jpos/iso/ISOMsg;->dirty:Z

    if-nez v0, :cond_0

    .line 439
    return-void

    .line 441
    :cond_0
    invoke-virtual {p0}, Lorg/jpos/iso/ISOMsg;->getMaxField()I

    move-result v0

    const/16 v1, 0xc0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 443
    .local v0, "mf":I
    new-instance v1, Ljava/util/BitSet;

    add-int/lit8 v2, v0, 0x3e

    shr-int/lit8 v2, v2, 0x6

    shl-int/lit8 v2, v2, 0x6

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 444
    .local v1, "bmap":Ljava/util/BitSet;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-gt v2, v0, :cond_2

    .line 445
    iget-object v3, p0, Lorg/jpos/iso/ISOMsg;->fields:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 446
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 444
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 447
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Lorg/jpos/iso/ISOBitMap;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v1}, Lorg/jpos/iso/ISOBitMap;-><init>(ILjava/util/BitSet;)V

    invoke-virtual {p0, v2}, Lorg/jpos/iso/ISOMsg;->set(Lorg/jpos/iso/ISOComponent;)V

    .line 448
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/jpos/iso/ISOMsg;->dirty:Z

    .line 449
    return-void
.end method

.method public set(ILjava/lang/String;)V
    .locals 3
    .param p1, "fldno"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 224
    if-nez p2, :cond_0

    .line 225
    invoke-virtual {p0, p1}, Lorg/jpos/iso/ISOMsg;->unset(I)V

    .line 226
    return-void

    .line 230
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/jpos/iso/ISOMsg;->packager:Lorg/jpos/iso/ISOPackager;

    instance-of v1, v0, Lorg/jpos/iso/ISOBasePackager;

    if-nez v1, :cond_1

    .line 233
    new-instance v0, Lorg/jpos/iso/ISOField;

    invoke-direct {v0, p1, p2}, Lorg/jpos/iso/ISOField;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jpos/iso/ISOMsg;->set(Lorg/jpos/iso/ISOComponent;)V

    goto :goto_0

    .line 237
    :cond_1
    check-cast v0, Lorg/jpos/iso/ISOBasePackager;

    invoke-virtual {v0, p1}, Lorg/jpos/iso/ISOBasePackager;->getFieldPackager(I)Lorg/jpos/iso/ISOFieldPackager;

    move-result-object v0

    .line 238
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Lorg/jpos/iso/ISOBinaryFieldPackager;

    if-eqz v1, :cond_2

    .line 239
    new-instance v1, Lorg/jpos/iso/ISOBinaryField;

    invoke-static {p2}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/jpos/iso/ISOBinaryField;-><init>(I[B)V

    invoke-virtual {p0, v1}, Lorg/jpos/iso/ISOMsg;->set(Lorg/jpos/iso/ISOComponent;)V

    goto :goto_0

    .line 241
    :cond_2
    new-instance v1, Lorg/jpos/iso/ISOField;

    invoke-direct {v1, p1, p2}, Lorg/jpos/iso/ISOField;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/jpos/iso/ISOMsg;->set(Lorg/jpos/iso/ISOComponent;)V
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 244
    .end local v0    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 245
    return-void
.end method

.method public set(I[B)V
    .locals 1
    .param p1, "fldno"    # I
    .param p2, "value"    # [B

    .line 348
    if-nez p2, :cond_0

    .line 349
    invoke-virtual {p0, p1}, Lorg/jpos/iso/ISOMsg;->unset(I)V

    .line 350
    return-void

    .line 354
    :cond_0
    :try_start_0
    new-instance v0, Lorg/jpos/iso/ISOBinaryField;

    invoke-direct {v0, p1, p2}, Lorg/jpos/iso/ISOBinaryField;-><init>(I[B)V

    invoke-virtual {p0, v0}, Lorg/jpos/iso/ISOMsg;->set(Lorg/jpos/iso/ISOComponent;)V
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 355
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 356
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "fpath"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 254
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "."

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .local v0, "st":Ljava/util/StringTokenizer;
    move-object v1, p0

    .line 257
    .local v1, "m":Lorg/jpos/iso/ISOMsg;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/jpos/iso/ISOMsg;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 258
    .local v2, "fldno":I
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 259
    invoke-virtual {v1, v2}, Lorg/jpos/iso/ISOMsg;->getValue(I)Ljava/lang/Object;

    move-result-object v3

    .line 260
    .local v3, "obj":Ljava/lang/Object;
    instance-of v4, v3, Lorg/jpos/iso/ISOMsg;

    if-eqz v4, :cond_0

    .line 261
    move-object v1, v3

    check-cast v1, Lorg/jpos/iso/ISOMsg;

    goto :goto_1

    .line 267
    :cond_0
    if-nez p2, :cond_1

    .line 268
    goto :goto_2

    .line 272
    :cond_1
    :try_start_0
    new-instance v4, Lorg/jpos/iso/ISOMsg;

    invoke-direct {v4, v2}, Lorg/jpos/iso/ISOMsg;-><init>(I)V
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v5, v4

    .end local v1    # "m":Lorg/jpos/iso/ISOMsg;
    .local v5, "m":Lorg/jpos/iso/ISOMsg;
    :try_start_1
    invoke-virtual {v1, v4}, Lorg/jpos/iso/ISOMsg;->set(Lorg/jpos/iso/ISOComponent;)V
    :try_end_1
    .catch Lorg/jpos/iso/ISOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 273
    move-object v1, v5

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v1, v5

    goto :goto_1

    .end local v5    # "m":Lorg/jpos/iso/ISOMsg;
    .restart local v1    # "m":Lorg/jpos/iso/ISOMsg;
    :catch_1
    move-exception v4

    .line 275
    .end local v3    # "obj":Ljava/lang/Object;
    :goto_1
    nop

    .line 279
    .end local v2    # "fldno":I
    goto :goto_0

    .line 276
    .restart local v2    # "fldno":I
    :cond_2
    invoke-virtual {v1, v2, p2}, Lorg/jpos/iso/ISOMsg;->set(ILjava/lang/String;)V

    .line 277
    nop

    .line 280
    .end local v2    # "fldno":I
    :goto_2
    return-void
.end method

.method public set(Ljava/lang/String;Lorg/jpos/iso/ISOComponent;)V
    .locals 6
    .param p1, "fpath"    # Ljava/lang/String;
    .param p2, "c"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 289
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "."

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .local v0, "st":Ljava/util/StringTokenizer;
    move-object v1, p0

    .line 292
    .local v1, "m":Lorg/jpos/iso/ISOMsg;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/jpos/iso/ISOMsg;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 293
    .local v2, "fldno":I
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 294
    invoke-virtual {v1, v2}, Lorg/jpos/iso/ISOMsg;->getValue(I)Ljava/lang/Object;

    move-result-object v3

    .line 295
    .local v3, "obj":Ljava/lang/Object;
    instance-of v4, v3, Lorg/jpos/iso/ISOMsg;

    if-eqz v4, :cond_0

    .line 296
    move-object v1, v3

    check-cast v1, Lorg/jpos/iso/ISOMsg;

    goto :goto_1

    .line 302
    :cond_0
    if-nez p2, :cond_1

    .line 303
    goto :goto_2

    .line 306
    :cond_1
    new-instance v4, Lorg/jpos/iso/ISOMsg;

    invoke-direct {v4, v2}, Lorg/jpos/iso/ISOMsg;-><init>(I)V

    move-object v5, v4

    .end local v1    # "m":Lorg/jpos/iso/ISOMsg;
    .local v5, "m":Lorg/jpos/iso/ISOMsg;
    invoke-virtual {v1, v4}, Lorg/jpos/iso/ISOMsg;->set(Lorg/jpos/iso/ISOComponent;)V

    move-object v1, v5

    .line 308
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v5    # "m":Lorg/jpos/iso/ISOMsg;
    .restart local v1    # "m":Lorg/jpos/iso/ISOMsg;
    :goto_1
    nop

    .line 312
    .end local v2    # "fldno":I
    goto :goto_0

    .line 309
    .restart local v2    # "fldno":I
    :cond_2
    invoke-virtual {v1, p2}, Lorg/jpos/iso/ISOMsg;->set(Lorg/jpos/iso/ISOComponent;)V

    .line 310
    nop

    .line 313
    .end local v2    # "fldno":I
    :goto_2
    return-void
.end method

.method public set(Ljava/lang/String;[B)V
    .locals 6
    .param p1, "fpath"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .line 322
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "."

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .local v0, "st":Ljava/util/StringTokenizer;
    move-object v1, p0

    .line 325
    .local v1, "m":Lorg/jpos/iso/ISOMsg;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/jpos/iso/ISOMsg;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 326
    .local v2, "fldno":I
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 327
    invoke-virtual {v1, v2}, Lorg/jpos/iso/ISOMsg;->getValue(I)Ljava/lang/Object;

    move-result-object v3

    .line 328
    .local v3, "obj":Ljava/lang/Object;
    instance-of v4, v3, Lorg/jpos/iso/ISOMsg;

    if-eqz v4, :cond_0

    .line 329
    move-object v1, v3

    check-cast v1, Lorg/jpos/iso/ISOMsg;

    goto :goto_1

    .line 332
    :cond_0
    :try_start_0
    new-instance v4, Lorg/jpos/iso/ISOMsg;

    invoke-direct {v4, v2}, Lorg/jpos/iso/ISOMsg;-><init>(I)V
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v5, v4

    .end local v1    # "m":Lorg/jpos/iso/ISOMsg;
    .local v5, "m":Lorg/jpos/iso/ISOMsg;
    :try_start_1
    invoke-virtual {v1, v4}, Lorg/jpos/iso/ISOMsg;->set(Lorg/jpos/iso/ISOComponent;)V
    :try_end_1
    .catch Lorg/jpos/iso/ISOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 333
    move-object v1, v5

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v1, v5

    goto :goto_1

    .end local v5    # "m":Lorg/jpos/iso/ISOMsg;
    .restart local v1    # "m":Lorg/jpos/iso/ISOMsg;
    :catch_1
    move-exception v4

    .line 334
    .end local v3    # "obj":Ljava/lang/Object;
    :goto_1
    nop

    .line 338
    .end local v2    # "fldno":I
    goto :goto_0

    .line 335
    .restart local v2    # "fldno":I
    :cond_1
    invoke-virtual {v1, v2, p2}, Lorg/jpos/iso/ISOMsg;->set(I[B)V

    .line 336
    nop

    .line 339
    .end local v2    # "fldno":I
    return-void
.end method

.method public set(Lorg/jpos/iso/ISOComponent;)V
    .locals 3
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 208
    if-eqz p1, :cond_1

    .line 209
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 210
    .local v0, "i":Ljava/lang/Integer;
    iget-object v1, p0, Lorg/jpos/iso/ISOMsg;->fields:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lorg/jpos/iso/ISOMsg;->maxField:I

    if-le v1, v2, :cond_0

    .line 212
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lorg/jpos/iso/ISOMsg;->maxField:I

    .line 213
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jpos/iso/ISOMsg;->dirty:Z

    .line 215
    .end local v0    # "i":Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method public setDirection(I)V
    .locals 0
    .param p1, "direction"    # I

    .line 103
    iput p1, p0, Lorg/jpos/iso/ISOMsg;->direction:I

    .line 104
    return-void
.end method

.method public setFieldNumber(I)V
    .locals 0
    .param p1, "fieldNumber"    # I

    .line 83
    iput p1, p0, Lorg/jpos/iso/ISOMsg;->fieldNumber:I

    .line 84
    return-void
.end method

.method public setHeader(Lorg/jpos/iso/ISOHeader;)V
    .locals 0
    .param p1, "header"    # Lorg/jpos/iso/ISOHeader;

    .line 114
    iput-object p1, p0, Lorg/jpos/iso/ISOMsg;->header:Lorg/jpos/iso/ISOHeader;

    .line 115
    return-void
.end method

.method public setHeader([B)V
    .locals 1
    .param p1, "b"    # [B

    .line 110
    new-instance v0, Lorg/jpos/iso/header/BaseHeader;

    invoke-direct {v0, p1}, Lorg/jpos/iso/header/BaseHeader;-><init>([B)V

    iput-object v0, p0, Lorg/jpos/iso/ISOMsg;->header:Lorg/jpos/iso/ISOHeader;

    .line 111
    return-void
.end method

.method public setMTI(Ljava/lang/String;)V
    .locals 2
    .param p1, "mti"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 900
    invoke-virtual {p0}, Lorg/jpos/iso/ISOMsg;->isInner()Z

    move-result v0

    if-nez v0, :cond_0

    .line 902
    new-instance v0, Lorg/jpos/iso/ISOField;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/jpos/iso/ISOField;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jpos/iso/ISOMsg;->set(Lorg/jpos/iso/ISOComponent;)V

    .line 903
    return-void

    .line 901
    :cond_0
    new-instance v0, Lorg/jpos/iso/ISOException;

    const-string v1, "can\'t setMTI on inner message"

    invoke-direct {v0, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPackager(Lorg/jpos/iso/ISOPackager;)V
    .locals 0
    .param p1, "p"    # Lorg/jpos/iso/ISOPackager;

    .line 195
    iput-object p1, p0, Lorg/jpos/iso/ISOMsg;->packager:Lorg/jpos/iso/ISOPackager;

    .line 196
    return-void
.end method

.method public setResponseMTI()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 979
    invoke-virtual {p0}, Lorg/jpos/iso/ISOMsg;->isRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 982
    invoke-virtual {p0}, Lorg/jpos/iso/ISOMsg;->getMTI()Ljava/lang/String;

    move-result-object v0

    .line 983
    .local v0, "mti":Ljava/lang/String;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 984
    .local v1, "c1":C
    const/16 v2, 0x30

    .line 985
    .local v2, "c2":C
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 992
    :pswitch_0
    const/16 v2, 0x34

    goto :goto_0

    .line 990
    :pswitch_1
    const/16 v2, 0x32

    goto :goto_0

    .line 988
    :pswitch_2
    const/16 v2, 0x30

    .line 995
    :goto_0
    new-instance v3, Lorg/jpos/iso/ISOField;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 996
    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 997
    invoke-virtual {p0}, Lorg/jpos/iso/ISOMsg;->getMTI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lorg/jpos/iso/ISOField;-><init>(ILjava/lang/String;)V

    .line 995
    invoke-virtual {p0, v3}, Lorg/jpos/iso/ISOMsg;->set(Lorg/jpos/iso/ISOComponent;)V

    .line 1000
    return-void

    .line 980
    .end local v0    # "mti":Ljava/lang/String;
    .end local v1    # "c1":C
    .end local v2    # "c2":C
    :cond_0
    new-instance v0, Lorg/jpos/iso/ISOException;

    const-string v1, "not a request - can\'t set response MTI"

    invoke-direct {v0, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setRetransmissionMTI()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 1006
    invoke-virtual {p0}, Lorg/jpos/iso/ISOMsg;->isRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1009
    new-instance v0, Lorg/jpos/iso/ISOField;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jpos/iso/ISOMsg;->getMTI()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lorg/jpos/iso/ISOField;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jpos/iso/ISOMsg;->set(Lorg/jpos/iso/ISOComponent;)V

    .line 1010
    return-void

    .line 1007
    :cond_0
    new-instance v0, Lorg/jpos/iso/ISOException;

    const-string v1, "not a request"

    invoke-direct {v0, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSource(Lorg/jpos/iso/ISOSource;)V
    .locals 1
    .param p1, "source"    # Lorg/jpos/iso/ISOSource;

    .line 1138
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/jpos/iso/ISOMsg;->sourceRef:Ljava/lang/ref/WeakReference;

    .line 1139
    return-void
.end method

.method public setTrailer([B)V
    .locals 0
    .param p1, "trailer"    # [B

    .line 134
    iput-object p1, p0, Lorg/jpos/iso/ISOMsg;->trailer:[B

    .line 135
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 756
    new-instance v0, Lorg/jpos/iso/ISOException;

    const-string v1, "setValue N/A in ISOMsg"

    invoke-direct {v0, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 861
    .local v0, "s":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/jpos/iso/ISOMsg;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 862
    const-string v1, " In: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 863
    :cond_0
    invoke-virtual {p0}, Lorg/jpos/iso/ISOMsg;->isOutgoing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 864
    const-string v1, "Out: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 866
    :cond_1
    const-string v1, "     "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/jpos/iso/ISOMsg;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lorg/jpos/iso/ISOMsg;->hasField(I)Z

    move-result v2

    const/16 v3, 0x20

    if-eqz v2, :cond_2

    .line 870
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 871
    invoke-virtual {p0, v1}, Lorg/jpos/iso/ISOMsg;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    :cond_2
    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Lorg/jpos/iso/ISOMsg;->hasField(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 874
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 875
    invoke-virtual {p0, v1}, Lorg/jpos/iso/ISOMsg;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unpack([B)I
    .locals 1
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 478
    monitor-enter p0

    .line 479
    :try_start_0
    iget-object v0, p0, Lorg/jpos/iso/ISOMsg;->packager:Lorg/jpos/iso/ISOPackager;

    invoke-interface {v0, p0, p1}, Lorg/jpos/iso/ISOPackager;->unpack(Lorg/jpos/iso/ISOComponent;[B)I

    move-result v0

    monitor-exit p0

    return v0

    .line 480
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unpack(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 484
    monitor-enter p0

    .line 485
    :try_start_0
    iget-object v0, p0, Lorg/jpos/iso/ISOMsg;->packager:Lorg/jpos/iso/ISOPackager;

    invoke-interface {v0, p0, p1}, Lorg/jpos/iso/ISOPackager;->unpack(Lorg/jpos/iso/ISOComponent;Ljava/io/InputStream;)V

    .line 486
    monitor-exit p0

    .line 487
    return-void

    .line 486
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unset(I)V
    .locals 2
    .param p1, "fldno"    # I

    .line 365
    iget-object v0, p0, Lorg/jpos/iso/ISOMsg;->fields:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jpos/iso/ISOMsg;->maxFieldDirty:Z

    iput-boolean v0, p0, Lorg/jpos/iso/ISOMsg;->dirty:Z

    .line 367
    :cond_0
    return-void
.end method

.method public unset(Ljava/lang/String;)V
    .locals 7
    .param p1, "fpath"    # Ljava/lang/String;

    .line 384
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "."

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    .local v0, "st":Ljava/util/StringTokenizer;
    move-object v1, p0

    .line 386
    .local v1, "m":Lorg/jpos/iso/ISOMsg;
    move-object v2, v1

    .line 387
    .local v2, "lastm":Lorg/jpos/iso/ISOMsg;
    const/4 v3, -0x1

    .line 390
    .local v3, "fldno":I
    :goto_0
    move v4, v3

    .line 391
    .local v4, "lastfldno":I
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/jpos/iso/ISOMsg;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 392
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 393
    invoke-virtual {v1, v3}, Lorg/jpos/iso/ISOMsg;->getValue(I)Ljava/lang/Object;

    move-result-object v5

    .line 394
    .local v5, "obj":Ljava/lang/Object;
    instance-of v6, v5, Lorg/jpos/iso/ISOMsg;

    if-eqz v6, :cond_1

    .line 395
    move-object v2, v1

    .line 396
    move-object v1, v5

    check-cast v1, Lorg/jpos/iso/ISOMsg;

    .line 402
    .end local v5    # "obj":Ljava/lang/Object;
    goto :goto_0

    .line 403
    :cond_0
    invoke-virtual {v1, v3}, Lorg/jpos/iso/ISOMsg;->unset(I)V

    .line 404
    invoke-virtual {v1}, Lorg/jpos/iso/ISOMsg;->hasFields()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 405
    invoke-virtual {v2, v4}, Lorg/jpos/iso/ISOMsg;->unset(I)V

    .line 410
    :cond_1
    return-void
.end method

.method public varargs unset([I)V
    .locals 3
    .param p1, "flds"    # [I

    .line 374
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 375
    .local v2, "fld":I
    invoke-virtual {p0, v2}, Lorg/jpos/iso/ISOMsg;->unset(I)V

    .line 374
    .end local v2    # "fld":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 376
    :cond_0
    return-void
.end method

.method public varargs unset([Ljava/lang/String;)V
    .locals 3
    .param p1, "fpaths"    # [Ljava/lang/String;

    .line 418
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 419
    .local v2, "fpath":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/jpos/iso/ISOMsg;->unset(Ljava/lang/String;)V

    .line 418
    .end local v2    # "fpath":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 421
    :cond_0
    return-void
.end method

.method protected writeDirection(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1048
    const/16 v0, 0x44

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 1049
    iget v0, p0, Lorg/jpos/iso/ISOMsg;->direction:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 1050
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1059
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 1060
    iget v0, p0, Lorg/jpos/iso/ISOMsg;->fieldNumber:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeShort(I)V

    .line 1062
    iget-object v0, p0, Lorg/jpos/iso/ISOMsg;->header:Lorg/jpos/iso/ISOHeader;

    if-eqz v0, :cond_0

    .line 1063
    invoke-virtual {p0, p1}, Lorg/jpos/iso/ISOMsg;->writeHeader(Ljava/io/ObjectOutput;)V

    .line 1064
    :cond_0
    iget-object v0, p0, Lorg/jpos/iso/ISOMsg;->packager:Lorg/jpos/iso/ISOPackager;

    if-eqz v0, :cond_1

    .line 1065
    invoke-virtual {p0, p1}, Lorg/jpos/iso/ISOMsg;->writePackager(Ljava/io/ObjectOutput;)V

    .line 1066
    :cond_1
    iget v0, p0, Lorg/jpos/iso/ISOMsg;->direction:I

    if-lez v0, :cond_2

    .line 1067
    invoke-virtual {p0, p1}, Lorg/jpos/iso/ISOMsg;->writeDirection(Ljava/io/ObjectOutput;)V

    .line 1071
    :cond_2
    iget-object v0, p0, Lorg/jpos/iso/ISOMsg;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1072
    .local v1, "o":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lorg/jpos/iso/ISOComponent;

    .line 1073
    .local v2, "c":Lorg/jpos/iso/ISOComponent;
    instance-of v3, v2, Lorg/jpos/iso/ISOMsg;

    if-eqz v3, :cond_3

    .line 1074
    const/16 v3, 0x4d

    invoke-direct {p0, p1, v3, v2}, Lorg/jpos/iso/ISOMsg;->writeExternal(Ljava/io/ObjectOutput;CLorg/jpos/iso/ISOComponent;)V

    goto :goto_1

    .line 1075
    :cond_3
    instance-of v3, v2, Lorg/jpos/iso/ISOBinaryField;

    if-eqz v3, :cond_4

    .line 1076
    const/16 v3, 0x42

    invoke-direct {p0, p1, v3, v2}, Lorg/jpos/iso/ISOMsg;->writeExternal(Ljava/io/ObjectOutput;CLorg/jpos/iso/ISOComponent;)V

    goto :goto_1

    .line 1077
    :cond_4
    instance-of v3, v2, Lorg/jpos/iso/ISOAmount;

    if-eqz v3, :cond_5

    .line 1078
    const/16 v3, 0x41

    invoke-direct {p0, p1, v3, v2}, Lorg/jpos/iso/ISOMsg;->writeExternal(Ljava/io/ObjectOutput;CLorg/jpos/iso/ISOComponent;)V

    goto :goto_1

    .line 1079
    :cond_5
    instance-of v3, v2, Lorg/jpos/iso/ISOField;

    if-eqz v3, :cond_6

    .line 1080
    const/16 v3, 0x46

    invoke-direct {p0, p1, v3, v2}, Lorg/jpos/iso/ISOMsg;->writeExternal(Ljava/io/ObjectOutput;CLorg/jpos/iso/ISOComponent;)V

    .line 1082
    .end local v1    # "o":Ljava/lang/Object;
    .end local v2    # "c":Lorg/jpos/iso/ISOComponent;
    :cond_6
    :goto_1
    goto :goto_0

    .line 1083
    :cond_7
    const/16 v0, 0x45

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 1084
    return-void
.end method

.method protected writeHeader(Ljava/io/ObjectOutput;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1012
    iget-object v0, p0, Lorg/jpos/iso/ISOMsg;->header:Lorg/jpos/iso/ISOHeader;

    invoke-interface {v0}, Lorg/jpos/iso/ISOHeader;->getLength()I

    move-result v0

    .line 1013
    .local v0, "len":I
    if-lez v0, :cond_0

    .line 1014
    const/16 v1, 0x48

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 1015
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeShort(I)V

    .line 1016
    iget-object v1, p0, Lorg/jpos/iso/ISOMsg;->header:Lorg/jpos/iso/ISOHeader;

    invoke-interface {v1}, Lorg/jpos/iso/ISOHeader;->pack()[B

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->write([B)V

    .line 1018
    :cond_0
    return-void
.end method

.method protected writePackager(Ljava/io/ObjectOutput;)V
    .locals 3
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1028
    const/16 v0, 0x50

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 1029
    iget-object v0, p0, Lorg/jpos/iso/ISOMsg;->packager:Lorg/jpos/iso/ISOPackager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1030
    .local v0, "pclass":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1031
    .local v1, "b":[B
    array-length v2, v1

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeShort(I)V

    .line 1032
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->write([B)V

    .line 1033
    return-void
.end method

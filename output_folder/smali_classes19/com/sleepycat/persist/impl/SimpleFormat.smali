.class public abstract Lcom/sleepycat/persist/impl/SimpleFormat;
.super Lcom/sleepycat/persist/impl/Format;
.source "SimpleFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/persist/impl/SimpleFormat$FDate;,
        Lcom/sleepycat/persist/impl/SimpleFormat$FBigDec;,
        Lcom/sleepycat/persist/impl/SimpleFormat$FBigInt;,
        Lcom/sleepycat/persist/impl/SimpleFormat$FString;,
        Lcom/sleepycat/persist/impl/SimpleFormat$FChar;,
        Lcom/sleepycat/persist/impl/SimpleFormat$FDouble;,
        Lcom/sleepycat/persist/impl/SimpleFormat$FFloat;,
        Lcom/sleepycat/persist/impl/SimpleFormat$FLong;,
        Lcom/sleepycat/persist/impl/SimpleFormat$FInt;,
        Lcom/sleepycat/persist/impl/SimpleFormat$FShort;,
        Lcom/sleepycat/persist/impl/SimpleFormat$FByte;,
        Lcom/sleepycat/persist/impl/SimpleFormat$FBool;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3fc597812d56cc66L


# instance fields
.field private final primitive:Z

.field private wrapperFormat:Lcom/sleepycat/persist/impl/SimpleFormat;


# direct methods
.method constructor <init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;Z)V
    .locals 0
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "primitive"    # Z

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/persist/impl/Format;-><init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;)V

    .line 43
    iput-boolean p3, p0, Lcom/sleepycat/persist/impl/SimpleFormat;->primitive:Z

    .line 44
    return-void
.end method


# virtual methods
.method collectRelatedFormats(Lcom/sleepycat/persist/impl/Catalog;Ljava/util/Map;)V
    .locals 0
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/persist/impl/Catalog;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/impl/Format;",
            ">;)V"
        }
    .end annotation

    .line 68
    .local p2, "newFormats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/impl/Format;>;"
    return-void
.end method

.method copySecMultiKeyPrimitiveArray(ILcom/sleepycat/persist/impl/RecordInput;Ljava/util/Set;)V
    .locals 5
    .param p1, "len"    # I
    .param p2, "input"    # Lcom/sleepycat/persist/impl/RecordInput;
    .param p3, "results"    # Ljava/util/Set;

    .line 129
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/SimpleFormat;->getPrimitiveLength()I

    move-result v0

    .line 130
    .local v0, "primLen":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 131
    new-instance v2, Lcom/sleepycat/je/DatabaseEntry;

    .line 132
    invoke-virtual {p2}, Lcom/sleepycat/persist/impl/RecordInput;->getBufferBytes()[B

    move-result-object v3

    invoke-virtual {p2}, Lcom/sleepycat/persist/impl/RecordInput;->getBufferOffset()I

    move-result v4

    invoke-direct {v2, v3, v4, v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>([BII)V

    .line 133
    .local v2, "entry":Lcom/sleepycat/je/DatabaseEntry;
    invoke-interface {p3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-virtual {p2, v0}, Lcom/sleepycat/persist/impl/RecordInput;->skipFast(I)V

    .line 130
    .end local v2    # "entry":Lcom/sleepycat/je/DatabaseEntry;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method evolve(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Evolver;)Z
    .locals 1
    .param p1, "newFormat"    # Lcom/sleepycat/persist/impl/Format;
    .param p2, "evolver"    # Lcom/sleepycat/persist/impl/Evolver;

    .line 82
    invoke-virtual {p2, p0, p1}, Lcom/sleepycat/persist/impl/Evolver;->useOldFormat(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;)V

    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method getPrimitiveLength()I
    .locals 1

    .line 99
    invoke-static {}, Lcom/sleepycat/compat/DbCompat;->unexpectedState()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method getWrapperFormat()Lcom/sleepycat/persist/impl/Format;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/sleepycat/persist/impl/SimpleFormat;->wrapperFormat:Lcom/sleepycat/persist/impl/SimpleFormat;

    return-object v0
.end method

.method initialize(Lcom/sleepycat/persist/impl/Catalog;Lcom/sleepycat/persist/model/EntityModel;I)V
    .locals 0
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "model"    # Lcom/sleepycat/persist/model/EntityModel;
    .param p3, "initVersion"    # I

    .line 72
    return-void
.end method

.method public isPrimitive()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/sleepycat/persist/impl/SimpleFormat;->primitive:Z

    return v0
.end method

.method public isSimple()Z
    .locals 1

    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method newPrimitiveArray(ILcom/sleepycat/persist/impl/EntityInput;)Ljava/lang/Object;
    .locals 1
    .param p1, "len"    # I
    .param p2, "input"    # Lcom/sleepycat/persist/impl/EntityInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 91
    invoke-static {}, Lcom/sleepycat/compat/DbCompat;->unexpectedState()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public readObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "input"    # Lcom/sleepycat/persist/impl/EntityInput;
    .param p3, "rawAccess"    # Z

    .line 77
    return-object p1
.end method

.method readPrimitiveField(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;Ljava/lang/reflect/Field;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "input"    # Lcom/sleepycat/persist/impl/EntityInput;
    .param p3, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 108
    invoke-static {}, Lcom/sleepycat/compat/DbCompat;->unexpectedState()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method setWrapperFormat(Lcom/sleepycat/persist/impl/SimpleFormat;)V
    .locals 0
    .param p1, "wrapperFormat"    # Lcom/sleepycat/persist/impl/SimpleFormat;

    .line 47
    iput-object p1, p0, Lcom/sleepycat/persist/impl/SimpleFormat;->wrapperFormat:Lcom/sleepycat/persist/impl/SimpleFormat;

    .line 48
    return-void
.end method

.method skipPrimitiveArray(ILcom/sleepycat/persist/impl/RecordInput;)V
    .locals 1
    .param p1, "len"    # I
    .param p2, "input"    # Lcom/sleepycat/persist/impl/RecordInput;

    .line 123
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/SimpleFormat;->getPrimitiveLength()I

    move-result v0

    mul-int/2addr v0, p1

    invoke-virtual {p2, v0}, Lcom/sleepycat/persist/impl/RecordInput;->skipFast(I)V

    .line 124
    return-void
.end method

.method writePrimitiveArray(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "output"    # Lcom/sleepycat/persist/impl/EntityOutput;

    .line 95
    invoke-static {}, Lcom/sleepycat/compat/DbCompat;->unexpectedState()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method writePrimitiveField(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;Ljava/lang/reflect/Field;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "output"    # Lcom/sleepycat/persist/impl/EntityOutput;
    .param p3, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 117
    invoke-static {}, Lcom/sleepycat/compat/DbCompat;->unexpectedState()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

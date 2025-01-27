.class public Lcom/sleepycat/persist/impl/EnhancedAccessor;
.super Ljava/lang/Object;
.source "EnhancedAccessor.java"

# interfaces
.implements Lcom/sleepycat/persist/impl/Accessor;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final EXPECT_ENHANCED:Z

.field private static final classRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/impl/Enhanced;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private compositeKeyFormats:[Lcom/sleepycat/persist/impl/Format;

.field private priKeyFormat:Lcom/sleepycat/persist/impl/Format;

.field private prototype:Lcom/sleepycat/persist/impl/Enhanced;

.field private type:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    nop

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 33
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/persist/impl/EnhancedAccessor;->classRegistry:Ljava/util/Map;

    .line 36
    nop

    .line 37
    const-string v0, "expectEnhanced"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sleepycat/persist/impl/EnhancedAccessor;->EXPECT_ENHANCED:Z

    .line 36
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;Lcom/sleepycat/persist/impl/ComplexFormat;)V
    .locals 3
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "format"    # Lcom/sleepycat/persist/impl/ComplexFormat;

    .line 76
    invoke-direct {p0, p2}, Lcom/sleepycat/persist/impl/EnhancedAccessor;-><init>(Ljava/lang/Class;)V

    .line 82
    move-object v0, p3

    .line 83
    .local v0, "declaringFormat":Lcom/sleepycat/persist/impl/ComplexFormat;
    :goto_0
    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/ComplexFormat;->getPriKeyFieldInfo()Lcom/sleepycat/persist/impl/FieldInfo;

    move-result-object v1

    .line 85
    .local v1, "priKeyField":Lcom/sleepycat/persist/impl/FieldInfo;
    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {v1}, Lcom/sleepycat/persist/impl/FieldInfo;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/sleepycat/persist/impl/Catalog;->getFormat(Ljava/lang/String;)Lcom/sleepycat/persist/impl/Format;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/persist/impl/EnhancedAccessor;->priKeyFormat:Lcom/sleepycat/persist/impl/Format;

    .line 87
    goto :goto_1

    .line 89
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/ComplexFormat;->getComplexSuper()Lcom/sleepycat/persist/impl/ComplexFormat;

    move-result-object v0

    .line 91
    .end local v1    # "priKeyField":Lcom/sleepycat/persist/impl/FieldInfo;
    goto :goto_0

    .line 92
    :cond_1
    :goto_1
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;Ljava/util/List;)V
    .locals 4
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/persist/impl/Catalog;",
            "Ljava/lang/Class;",
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/impl/FieldInfo;",
            ">;)V"
        }
    .end annotation

    .line 98
    .local p3, "fieldInfos":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/persist/impl/FieldInfo;>;"
    invoke-direct {p0, p2}, Lcom/sleepycat/persist/impl/EnhancedAccessor;-><init>(Ljava/lang/Class;)V

    .line 99
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    .line 100
    .local v0, "nFields":I
    new-array v1, v0, [Lcom/sleepycat/persist/impl/Format;

    iput-object v1, p0, Lcom/sleepycat/persist/impl/EnhancedAccessor;->compositeKeyFormats:[Lcom/sleepycat/persist/impl/Format;

    .line 101
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 102
    iget-object v2, p0, Lcom/sleepycat/persist/impl/EnhancedAccessor;->compositeKeyFormats:[Lcom/sleepycat/persist/impl/Format;

    .line 103
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/persist/impl/FieldInfo;

    invoke-virtual {v3}, Lcom/sleepycat/persist/impl/FieldInfo;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/sleepycat/persist/impl/Catalog;->getFormat(Ljava/lang/String;)Lcom/sleepycat/persist/impl/Format;

    move-result-object v3

    aput-object v3, v2, v1

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/Class;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/sleepycat/persist/impl/EnhancedAccessor;->type:Ljava/lang/Class;

    .line 68
    sget-object v0, Lcom/sleepycat/persist/impl/EnhancedAccessor;->classRegistry:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/impl/Enhanced;

    iput-object v0, p0, Lcom/sleepycat/persist/impl/EnhancedAccessor;->prototype:Lcom/sleepycat/persist/impl/Enhanced;

    .line 69
    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 70
    :cond_1
    :goto_0
    return-void
.end method

.method static isEnhanced(Ljava/lang/Class;)Z
    .locals 4
    .param p0, "type"    # Ljava/lang/Class;

    .line 57
    sget-object v0, Lcom/sleepycat/persist/impl/EnhancedAccessor;->classRegistry:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 58
    .local v0, "enhanced":Z
    if-nez v0, :cond_1

    sget-boolean v1, Lcom/sleepycat/persist/impl/EnhancedAccessor;->EXPECT_ENHANCED:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Test was run with expectEnhanced=true but class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 61
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not enhanced"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_1
    :goto_0
    return v0
.end method

.method public static registerClass(Ljava/lang/String;Lcom/sleepycat/persist/impl/Enhanced;)V
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "prototype"    # Lcom/sleepycat/persist/impl/Enhanced;

    .line 50
    sget-object v0, Lcom/sleepycat/persist/impl/EnhancedAccessor;->classRegistry:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method


# virtual methods
.method public getField(Ljava/lang/Object;IIZ)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "field"    # I
    .param p3, "superLevel"    # I
    .param p4, "isSecField"    # Z

    .line 201
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/persist/impl/Enhanced;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sleepycat/persist/impl/Enhanced;->bdbGetField(Ljava/lang/Object;IIZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isPriKeyFieldNullOrZero(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/sleepycat/persist/impl/EnhancedAccessor;->priKeyFormat:Lcom/sleepycat/persist/impl/Format;

    if-eqz v0, :cond_0

    .line 128
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/persist/impl/Enhanced;

    invoke-interface {v0}, Lcom/sleepycat/persist/impl/Enhanced;->bdbIsPriKeyFieldNullOrZero()Z

    move-result v0

    return v0

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No primary key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 126
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public newArray(I)Ljava/lang/Object;
    .locals 1
    .param p1, "len"    # I

    .line 116
    iget-object v0, p0, Lcom/sleepycat/persist/impl/EnhancedAccessor;->prototype:Lcom/sleepycat/persist/impl/Enhanced;

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/sleepycat/persist/impl/EnhancedAccessor;->type:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 120
    :cond_0
    invoke-interface {v0, p1}, Lcom/sleepycat/persist/impl/Enhanced;->bdbNewArray(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Ljava/lang/Object;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/sleepycat/persist/impl/EnhancedAccessor;->prototype:Lcom/sleepycat/persist/impl/Enhanced;

    if-eqz v0, :cond_0

    .line 112
    invoke-interface {v0}, Lcom/sleepycat/persist/impl/Enhanced;->bdbNewInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 110
    :cond_0
    invoke-static {}, Lcom/sleepycat/compat/DbCompat;->unexpectedState()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public readCompositeKeyFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "input"    # Lcom/sleepycat/persist/impl/EntityInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 194
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/persist/impl/Enhanced;

    iget-object v1, p0, Lcom/sleepycat/persist/impl/EnhancedAccessor;->compositeKeyFormats:[Lcom/sleepycat/persist/impl/Format;

    invoke-interface {v0, p2, v1}, Lcom/sleepycat/persist/impl/Enhanced;->bdbReadCompositeKeyFields(Lcom/sleepycat/persist/impl/EntityInput;[Lcom/sleepycat/persist/impl/Format;)V

    .line 195
    return-void
.end method

.method public readNonKeyFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;III)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "input"    # Lcom/sleepycat/persist/impl/EntityInput;
    .param p3, "startField"    # I
    .param p4, "endField"    # I
    .param p5, "superLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 181
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/persist/impl/Enhanced;

    .line 182
    invoke-interface {v0, p2, p3, p4, p5}, Lcom/sleepycat/persist/impl/Enhanced;->bdbReadNonKeyFields(Lcom/sleepycat/persist/impl/EntityInput;III)V

    .line 183
    return-void
.end method

.method public readPriKeyField(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "input"    # Lcom/sleepycat/persist/impl/EntityInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/sleepycat/persist/impl/EnhancedAccessor;->priKeyFormat:Lcom/sleepycat/persist/impl/Format;

    if-eqz v0, :cond_0

    .line 148
    move-object v1, p1

    check-cast v1, Lcom/sleepycat/persist/impl/Enhanced;

    invoke-interface {v1, p2, v0}, Lcom/sleepycat/persist/impl/Enhanced;->bdbReadPriKeyField(Lcom/sleepycat/persist/impl/EntityInput;Lcom/sleepycat/persist/impl/Format;)V

    .line 149
    return-void

    .line 145
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No primary key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 146
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public readSecKeyFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;III)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "input"    # Lcom/sleepycat/persist/impl/EntityInput;
    .param p3, "startField"    # I
    .param p4, "endField"    # I
    .param p5, "superLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 164
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/persist/impl/Enhanced;

    .line 165
    invoke-interface {v0, p2, p3, p4, p5}, Lcom/sleepycat/persist/impl/Enhanced;->bdbReadSecKeyFields(Lcom/sleepycat/persist/impl/EntityInput;III)V

    .line 166
    return-void
.end method

.method public setField(Ljava/lang/Object;IIZLjava/lang/Object;)V
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "field"    # I
    .param p3, "superLevel"    # I
    .param p4, "isSecField"    # Z
    .param p5, "value"    # Ljava/lang/Object;

    .line 209
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/persist/impl/Enhanced;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sleepycat/persist/impl/Enhanced;->bdbSetField(Ljava/lang/Object;IIZLjava/lang/Object;)V

    .line 210
    return-void
.end method

.method public setPriField(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 213
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/persist/impl/Enhanced;

    invoke-interface {v0, p1, p2}, Lcom/sleepycat/persist/impl/Enhanced;->bdbSetPriField(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 214
    return-void
.end method

.method public writeCompositeKeyFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "output"    # Lcom/sleepycat/persist/impl/EntityOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 188
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/persist/impl/Enhanced;

    iget-object v1, p0, Lcom/sleepycat/persist/impl/EnhancedAccessor;->compositeKeyFormats:[Lcom/sleepycat/persist/impl/Format;

    invoke-interface {v0, p2, v1}, Lcom/sleepycat/persist/impl/Enhanced;->bdbWriteCompositeKeyFields(Lcom/sleepycat/persist/impl/EntityOutput;[Lcom/sleepycat/persist/impl/Format;)V

    .line 189
    return-void
.end method

.method public writeNonKeyFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "output"    # Lcom/sleepycat/persist/impl/EntityOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 171
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/persist/impl/Enhanced;

    invoke-interface {v0, p2}, Lcom/sleepycat/persist/impl/Enhanced;->bdbWriteNonKeyFields(Lcom/sleepycat/persist/impl/EntityOutput;)V

    .line 172
    return-void
.end method

.method public writePriKeyField(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "output"    # Lcom/sleepycat/persist/impl/EntityOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/sleepycat/persist/impl/EnhancedAccessor;->priKeyFormat:Lcom/sleepycat/persist/impl/Format;

    if-eqz v0, :cond_0

    .line 138
    move-object v1, p1

    check-cast v1, Lcom/sleepycat/persist/impl/Enhanced;

    invoke-interface {v1, p2, v0}, Lcom/sleepycat/persist/impl/Enhanced;->bdbWritePriKeyField(Lcom/sleepycat/persist/impl/EntityOutput;Lcom/sleepycat/persist/impl/Format;)V

    .line 139
    return-void

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No primary key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 136
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public writeSecKeyFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "output"    # Lcom/sleepycat/persist/impl/EntityOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 154
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/persist/impl/Enhanced;

    invoke-interface {v0, p2}, Lcom/sleepycat/persist/impl/Enhanced;->bdbWriteSecKeyFields(Lcom/sleepycat/persist/impl/EntityOutput;)V

    .line 155
    return-void
.end method

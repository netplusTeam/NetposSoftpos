.class Lcom/sleepycat/persist/impl/ReflectionAccessor;
.super Ljava/lang/Object;
.source "ReflectionAccessor.java"

# interfaces
.implements Lcom/sleepycat/persist/impl/Accessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/persist/impl/ReflectionAccessor$PrimitiveAccess;,
        Lcom/sleepycat/persist/impl/ReflectionAccessor$StringAccess;,
        Lcom/sleepycat/persist/impl/ReflectionAccessor$KeyObjectAccess;,
        Lcom/sleepycat/persist/impl/ReflectionAccessor$ObjectAccess;,
        Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EMPTY_KEYS:[Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;


# instance fields
.field private constructor:Ljava/lang/reflect/Constructor;

.field private nonKeys:[Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;

.field private priKey:Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;

.field private secKeys:[Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;

.field private superAccessor:Lcom/sleepycat/persist/impl/Accessor;

.field private type:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    nop

    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;

    sput-object v0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->EMPTY_KEYS:[Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;

    return-void
.end method

.method constructor <init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;Lcom/sleepycat/persist/impl/Accessor;Lcom/sleepycat/persist/impl/FieldInfo;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "superAccessor"    # Lcom/sleepycat/persist/impl/Accessor;
    .param p4, "priKeyField"    # Lcom/sleepycat/persist/impl/FieldInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/persist/impl/Catalog;",
            "Ljava/lang/Class;",
            "Lcom/sleepycat/persist/impl/Accessor;",
            "Lcom/sleepycat/persist/impl/FieldInfo;",
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/impl/FieldInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/impl/FieldInfo;",
            ">;)V"
        }
    .end annotation

    .line 65
    .local p5, "secKeyFields":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/persist/impl/FieldInfo;>;"
    .local p6, "nonKeyFields":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/persist/impl/FieldInfo;>;"
    invoke-direct {p0, p2, p3}, Lcom/sleepycat/persist/impl/ReflectionAccessor;-><init>(Ljava/lang/Class;Lcom/sleepycat/persist/impl/Accessor;)V

    .line 66
    if-eqz p4, :cond_0

    .line 67
    const/4 v0, 0x1

    invoke-direct {p0, p1, p4, v0}, Lcom/sleepycat/persist/impl/ReflectionAccessor;->getField(Lcom/sleepycat/persist/impl/Catalog;Lcom/sleepycat/persist/impl/FieldInfo;Z)Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->priKey:Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;

    goto :goto_0

    .line 70
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->priKey:Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;

    .line 72
    :goto_0
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 73
    invoke-direct {p0, p1, p5, v1}, Lcom/sleepycat/persist/impl/ReflectionAccessor;->getFields(Lcom/sleepycat/persist/impl/Catalog;Ljava/util/List;Z)[Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->secKeys:[Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;

    goto :goto_1

    .line 76
    :cond_1
    sget-object v0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->EMPTY_KEYS:[Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;

    iput-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->secKeys:[Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;

    .line 78
    :goto_1
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 79
    invoke-direct {p0, p1, p6, v1}, Lcom/sleepycat/persist/impl/ReflectionAccessor;->getFields(Lcom/sleepycat/persist/impl/Catalog;Ljava/util/List;Z)[Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->nonKeys:[Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;

    goto :goto_2

    .line 82
    :cond_2
    sget-object v0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->EMPTY_KEYS:[Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;

    iput-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->nonKeys:[Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;

    .line 84
    :goto_2
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;Ljava/util/List;)V
    .locals 1
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

    .line 92
    .local p3, "fieldInfos":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/persist/impl/FieldInfo;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/sleepycat/persist/impl/ReflectionAccessor;-><init>(Ljava/lang/Class;Lcom/sleepycat/persist/impl/Accessor;)V

    .line 93
    iput-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->priKey:Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;

    .line 94
    sget-object v0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->EMPTY_KEYS:[Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;

    iput-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->secKeys:[Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;

    .line 95
    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Lcom/sleepycat/persist/impl/ReflectionAccessor;->getFields(Lcom/sleepycat/persist/impl/Catalog;Ljava/util/List;Z)[Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->nonKeys:[Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;

    .line 96
    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Lcom/sleepycat/persist/impl/Accessor;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "superAccessor"    # Lcom/sleepycat/persist/impl/Accessor;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->type:Ljava/lang/Class;

    .line 44
    iput-object p2, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->superAccessor:Lcom/sleepycat/persist/impl/Accessor;

    .line 46
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->constructor:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    nop

    .line 50
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->constructor:Ljava/lang/reflect/Constructor;

    .line 51
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->constructor:Ljava/lang/reflect/Constructor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/persist/impl/ReflectionAccessor;->setAccessible(Ljava/lang/reflect/AccessibleObject;Ljava/lang/String;)V

    .line 54
    :cond_1
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private getField(Lcom/sleepycat/persist/impl/Catalog;Lcom/sleepycat/persist/impl/FieldInfo;Z)Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;
    .locals 4
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "fieldInfo"    # Lcom/sleepycat/persist/impl/FieldInfo;
    .param p3, "isRequiredKeyField"    # Z

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->type:Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/sleepycat/persist/impl/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .local v0, "field":Ljava/lang/reflect/Field;
    nop

    .line 119
    iget-object v1, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->type:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 121
    :cond_0
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/persist/impl/ReflectionAccessor;->setAccessible(Ljava/lang/reflect/AccessibleObject;Ljava/lang/String;)V

    .line 123
    :cond_1
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 124
    .local v1, "fieldCls":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 125
    invoke-static {v1}, Lcom/sleepycat/persist/impl/SimpleCatalog;->isSimpleType(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 126
    new-instance v2, Lcom/sleepycat/persist/impl/ReflectionAccessor$PrimitiveAccess;

    .line 127
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/sleepycat/persist/impl/Catalog;->getFormat(Ljava/lang/String;)Lcom/sleepycat/persist/impl/Format;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/persist/impl/SimpleFormat;

    invoke-direct {v2, v0, v3}, Lcom/sleepycat/persist/impl/ReflectionAccessor$PrimitiveAccess;-><init>(Ljava/lang/reflect/Field;Lcom/sleepycat/persist/impl/SimpleFormat;)V

    .line 126
    return-object v2

    .line 125
    :cond_2
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 128
    :cond_3
    if-eqz p3, :cond_5

    .line 129
    invoke-virtual {p2}, Lcom/sleepycat/persist/impl/FieldInfo;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/sleepycat/persist/impl/Catalog;->getFormat(Ljava/lang/String;)Lcom/sleepycat/persist/impl/Format;

    move-result-object v2

    .line 130
    .local v2, "format":Lcom/sleepycat/persist/impl/Format;
    if-eqz v2, :cond_4

    .line 131
    new-instance v3, Lcom/sleepycat/persist/impl/ReflectionAccessor$KeyObjectAccess;

    invoke-direct {v3, v0, v2}, Lcom/sleepycat/persist/impl/ReflectionAccessor$KeyObjectAccess;-><init>(Ljava/lang/reflect/Field;Lcom/sleepycat/persist/impl/Format;)V

    return-object v3

    .line 130
    :cond_4
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 132
    .end local v2    # "format":Lcom/sleepycat/persist/impl/Format;
    :cond_5
    const-class v2, Ljava/lang/String;

    if-ne v1, v2, :cond_6

    .line 133
    new-instance v2, Lcom/sleepycat/persist/impl/ReflectionAccessor$StringAccess;

    invoke-direct {v2, v0}, Lcom/sleepycat/persist/impl/ReflectionAccessor$StringAccess;-><init>(Ljava/lang/reflect/Field;)V

    return-object v2

    .line 135
    :cond_6
    new-instance v2, Lcom/sleepycat/persist/impl/ReflectionAccessor$ObjectAccess;

    invoke-direct {v2, v0}, Lcom/sleepycat/persist/impl/ReflectionAccessor$ObjectAccess;-><init>(Ljava/lang/reflect/Field;)V

    return-object v2

    .line 116
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v1    # "fieldCls":Ljava/lang/Class;
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private getFields(Lcom/sleepycat/persist/impl/Catalog;Ljava/util/List;Z)[Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;
    .locals 5
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p3, "isRequiredKeyField"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/persist/impl/Catalog;",
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/impl/FieldInfo;",
            ">;Z)[",
            "Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;"
        }
    .end annotation

    .line 101
    .local p2, "fieldInfos":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/persist/impl/FieldInfo;>;"
    const/4 v0, 0x0

    .line 102
    .local v0, "index":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;

    .line 103
    .local v1, "fields":[Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/persist/impl/FieldInfo;

    .line 104
    .local v3, "info":Lcom/sleepycat/persist/impl/FieldInfo;
    invoke-direct {p0, p1, v3, p3}, Lcom/sleepycat/persist/impl/ReflectionAccessor;->getField(Lcom/sleepycat/persist/impl/Catalog;Lcom/sleepycat/persist/impl/FieldInfo;Z)Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;

    move-result-object v4

    aput-object v4, v1, v0

    .line 105
    nop

    .end local v3    # "info":Lcom/sleepycat/persist/impl/FieldInfo;
    add-int/lit8 v0, v0, 0x1

    .line 106
    goto :goto_0

    .line 107
    :cond_0
    return-object v1
.end method

.method private setAccessible(Ljava/lang/reflect/AccessibleObject;Ljava/lang/String;)V
    .locals 4
    .param p1, "object"    # Ljava/lang/reflect/AccessibleObject;
    .param p2, "memberName"    # Ljava/lang/String;

    .line 141
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    nop

    .line 149
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to access non-public member: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->type:Ljava/lang/Class;

    .line 145
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Please configure the Java Security Manager setting:  ReflectPermission suppressAccessChecks"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getField(Ljava/lang/Object;IIZ)Ljava/lang/Object;
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "field"    # I
    .param p3, "superLevel"    # I
    .param p4, "isSecField"    # Z

    .line 342
    if-lez p3, :cond_0

    .line 343
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->superAccessor:Lcom/sleepycat/persist/impl/Accessor;

    add-int/lit8 v1, p3, -0x1

    .line 344
    invoke-interface {v0, p1, p2, v1, p4}, Lcom/sleepycat/persist/impl/Accessor;->getField(Ljava/lang/Object;IIZ)Ljava/lang/Object;

    move-result-object v0

    .line 343
    return-object v0

    .line 347
    :cond_0
    if-eqz p4, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->secKeys:[Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;

    aget-object v0, v0, p2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->nonKeys:[Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;

    aget-object v0, v0, p2

    :goto_0
    iget-object v0, v0, Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;->field:Ljava/lang/reflect/Field;

    .line 349
    .local v0, "fld":Ljava/lang/reflect/Field;
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 350
    .end local v0    # "fld":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isPriKeyFieldNullOrZero(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->priKey:Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0, p1}, Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;->isNullOrZero(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->superAccessor:Lcom/sleepycat/persist/impl/Accessor;

    if-eqz v0, :cond_1

    .line 172
    invoke-interface {v0, p1}, Lcom/sleepycat/persist/impl/Accessor;->isPriKeyFieldNullOrZero(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 174
    :cond_1
    const-string v0, "No primary key field"

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    .end local p1    # "o":Ljava/lang/Object;
    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .restart local p1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public newArray(I)Ljava/lang/Object;
    .locals 1
    .param p1, "len"    # I

    .line 164
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->type:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Ljava/lang/Object;
    .locals 2

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->constructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 156
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 154
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public readCompositeKeyFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;)V
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "input"    # Lcom/sleepycat/persist/impl/EntityInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 330
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->nonKeys:[Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 331
    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;->read(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    .end local v0    # "i":I
    :cond_0
    nop

    .line 336
    return-void

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public readNonKeyFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;III)V
    .locals 6
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

    .line 293
    if-eqz p5, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->superAccessor:Lcom/sleepycat/persist/impl/Accessor;

    if-eqz v0, :cond_0

    .line 294
    add-int/lit8 v5, p5, -0x1

    .line 295
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/sleepycat/persist/impl/Accessor;->readNonKeyFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;III)V

    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    goto :goto_2

    .line 297
    :cond_0
    if-gtz p5, :cond_2

    .line 302
    :goto_0
    if-gtz p5, :cond_1

    .line 303
    move v0, p3

    .line 304
    .local v0, "i":I
    :goto_1
    if-gt v0, p4, :cond_1

    iget-object v1, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->nonKeys:[Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 306
    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;->read(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;)V

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 311
    .end local v0    # "i":I
    :cond_1
    nop

    .line 312
    return-void

    .line 298
    :cond_2
    const-string v0, "Superclass does not exist"

    .line 299
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    .end local p1    # "o":Ljava/lang/Object;
    .end local p2    # "input":Lcom/sleepycat/persist/impl/EntityInput;
    .end local p3    # "startField":I
    .end local p4    # "endField":I
    .end local p5    # "superLevel":I
    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    .local v0, "e":Ljava/lang/IllegalAccessException;
    .restart local p1    # "o":Ljava/lang/Object;
    .restart local p2    # "input":Lcom/sleepycat/persist/impl/EntityInput;
    .restart local p3    # "startField":I
    .restart local p4    # "endField":I
    .restart local p5    # "superLevel":I
    :goto_2
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
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

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->priKey:Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;->read(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;)V

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->superAccessor:Lcom/sleepycat/persist/impl/Accessor;

    if-eqz v0, :cond_1

    .line 204
    invoke-interface {v0, p1, p2}, Lcom/sleepycat/persist/impl/Accessor;->readPriKeyField(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;)V

    .line 210
    :goto_0
    nop

    .line 211
    return-void

    .line 206
    :cond_1
    const-string v0, "No primary key field"

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    .end local p1    # "o":Ljava/lang/Object;
    .end local p2    # "input":Lcom/sleepycat/persist/impl/EntityInput;
    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .restart local p1    # "o":Ljava/lang/Object;
    .restart local p2    # "input":Lcom/sleepycat/persist/impl/EntityInput;
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public readSecKeyFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;III)V
    .locals 7
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

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->priKey:Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;->isPrimitive:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->priKey:Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;

    iget-boolean v0, v0, Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;->isString:Z

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->priKey:Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;

    iget-object v0, v0, Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/sleepycat/persist/impl/EntityInput;->registerPriKeyObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->priKey:Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;->isString:Z

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->priKey:Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;

    iget-object v0, v0, Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/sleepycat/persist/impl/EntityInput;->registerPriStringKeyObject(Ljava/lang/Object;)V

    .line 249
    :cond_1
    :goto_0
    if-eqz p5, :cond_2

    iget-object v1, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->superAccessor:Lcom/sleepycat/persist/impl/Accessor;

    if-eqz v1, :cond_2

    .line 250
    add-int/lit8 v6, p5, -0x1

    .line 251
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/sleepycat/persist/impl/Accessor;->readSecKeyFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;III)V

    goto :goto_1

    .line 253
    :cond_2
    if-gtz p5, :cond_4

    .line 258
    :goto_1
    if-gtz p5, :cond_3

    .line 259
    move v0, p3

    .line 260
    .local v0, "i":I
    :goto_2
    if-gt v0, p4, :cond_3

    iget-object v1, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->secKeys:[Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 262
    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;->read(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;)V

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 267
    .end local v0    # "i":I
    :cond_3
    nop

    .line 268
    return-void

    .line 254
    :cond_4
    const-string v0, "Superclass does not exist"

    .line 255
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    .end local p1    # "o":Ljava/lang/Object;
    .end local p2    # "input":Lcom/sleepycat/persist/impl/EntityInput;
    .end local p3    # "startField":I
    .end local p4    # "endField":I
    .end local p5    # "superLevel":I
    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    .restart local p1    # "o":Ljava/lang/Object;
    .restart local p2    # "input":Lcom/sleepycat/persist/impl/EntityInput;
    .restart local p3    # "startField":I
    .restart local p4    # "endField":I
    .restart local p5    # "superLevel":I
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setField(Ljava/lang/Object;IIZLjava/lang/Object;)V
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "field"    # I
    .param p3, "superLevel"    # I
    .param p4, "isSecField"    # Z
    .param p5, "value"    # Ljava/lang/Object;

    .line 360
    if-lez p3, :cond_0

    .line 361
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->superAccessor:Lcom/sleepycat/persist/impl/Accessor;

    add-int/lit8 v3, p3, -0x1

    .line 362
    move-object v1, p1

    move v2, p2

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sleepycat/persist/impl/Accessor;->setField(Ljava/lang/Object;IIZLjava/lang/Object;)V

    .line 363
    return-void

    .line 366
    :cond_0
    if-eqz p4, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->secKeys:[Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;

    aget-object v0, v0, p2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->nonKeys:[Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;

    aget-object v0, v0, p2

    :goto_0
    iget-object v0, v0, Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;->field:Ljava/lang/reflect/Field;

    .line 368
    .local v0, "fld":Ljava/lang/reflect/Field;
    invoke-virtual {v0, p1, p5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    .end local v0    # "fld":Ljava/lang/reflect/Field;
    nop

    .line 372
    return-void

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setPriField(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->priKey:Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, v0, Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->superAccessor:Lcom/sleepycat/persist/impl/Accessor;

    if-eqz v0, :cond_1

    .line 379
    invoke-interface {v0, p1, p2}, Lcom/sleepycat/persist/impl/Accessor;->setPriField(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 385
    :goto_0
    nop

    .line 386
    return-void

    .line 381
    :cond_1
    const-string v0, "No primary key field"

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    .end local p1    # "o":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    .restart local p1    # "o":Ljava/lang/Object;
    .restart local p2    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public writeCompositeKeyFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;)V
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "output"    # Lcom/sleepycat/persist/impl/EntityOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 318
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->nonKeys:[Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 319
    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;->write(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 323
    .end local v0    # "i":I
    :cond_0
    nop

    .line 324
    return-void

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public writeNonKeyFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;)V
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "output"    # Lcom/sleepycat/persist/impl/EntityOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->superAccessor:Lcom/sleepycat/persist/impl/Accessor;

    if-eqz v0, :cond_0

    .line 275
    invoke-interface {v0, p1, p2}, Lcom/sleepycat/persist/impl/Accessor;->writeNonKeyFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;)V

    .line 277
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->nonKeys:[Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 278
    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;->write(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    .end local v0    # "i":I
    :cond_1
    nop

    .line 283
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
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

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->priKey:Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;->write(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;)V

    goto :goto_0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->superAccessor:Lcom/sleepycat/persist/impl/Accessor;

    if-eqz v0, :cond_1

    .line 188
    invoke-interface {v0, p1, p2}, Lcom/sleepycat/persist/impl/Accessor;->writePriKeyField(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;)V

    .line 194
    :goto_0
    nop

    .line 195
    return-void

    .line 190
    :cond_1
    const-string v0, "No primary key field"

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    .end local p1    # "o":Ljava/lang/Object;
    .end local p2    # "output":Lcom/sleepycat/persist/impl/EntityOutput;
    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .restart local p1    # "o":Ljava/lang/Object;
    .restart local p2    # "output":Lcom/sleepycat/persist/impl/EntityOutput;
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public writeSecKeyFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;)V
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "output"    # Lcom/sleepycat/persist/impl/EntityOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->priKey:Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;->isPrimitive:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->priKey:Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;

    iget-boolean v0, v0, Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;->isString:Z

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->priKey:Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;

    iget-object v0, v0, Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/sleepycat/persist/impl/EntityOutput;->registerPriKeyObject(Ljava/lang/Object;)V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->superAccessor:Lcom/sleepycat/persist/impl/Accessor;

    if-eqz v0, :cond_1

    .line 226
    invoke-interface {v0, p1, p2}, Lcom/sleepycat/persist/impl/Accessor;->writeSecKeyFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;)V

    .line 228
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor;->secKeys:[Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 229
    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;->write(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    .end local v0    # "i":I
    :cond_2
    nop

    .line 234
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

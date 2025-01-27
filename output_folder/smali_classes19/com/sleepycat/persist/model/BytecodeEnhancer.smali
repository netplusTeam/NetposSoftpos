.class Lcom/sleepycat/persist/model/BytecodeEnhancer;
.super Lcom/sleepycat/asm/ClassVisitor;
.source "BytecodeEnhancer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/persist/model/BytecodeEnhancer$AnnotationInfo;,
        Lcom/sleepycat/persist/model/BytecodeEnhancer$OrderInfo;,
        Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;,
        Lcom/sleepycat/persist/model/BytecodeEnhancer$NotPersistentException;
    }
.end annotation


# static fields
.field private static final NOT_PERSISTENT:Lcom/sleepycat/persist/model/BytecodeEnhancer$NotPersistentException;

.field private static final PRIMITIVE_WRAPPERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private className:Ljava/lang/String;

.field private hasDefaultConstructor:Z

.field private hasPersistentSuperclass:Z

.field private isAbstract:Z

.field private isCompositeKey:Z

.field private isPersistent:Z

.field private nonKeyFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;",
            ">;"
        }
    .end annotation
.end field

.field private priKeyField:Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

.field private secKeyFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;",
            ">;"
        }
    .end annotation
.end field

.field private staticBlockMethod:Ljava/lang/String;

.field private superclassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 104
    new-instance v0, Lcom/sleepycat/persist/model/BytecodeEnhancer$NotPersistentException;

    invoke-direct {v0}, Lcom/sleepycat/persist/model/BytecodeEnhancer$NotPersistentException;-><init>()V

    sput-object v0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->NOT_PERSISTENT:Lcom/sleepycat/persist/model/BytecodeEnhancer$NotPersistentException;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->PRIMITIVE_WRAPPERS:Ljava/util/Map;

    .line 110
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-class v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-class v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-class v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-class v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-class v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-class v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/asm/ClassVisitor;)V
    .locals 1
    .param p1, "parentVisitor"    # Lcom/sleepycat/asm/ClassVisitor;

    .line 133
    const/high16 v0, 0x40000

    invoke-direct {p0, v0, p1}, Lcom/sleepycat/asm/ClassVisitor;-><init>(ILcom/sleepycat/asm/ClassVisitor;)V

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->secKeyFields:Ljava/util/List;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->nonKeyFields:Ljava/util/List;

    .line 136
    return-void
.end method

.method private abort()Lcom/sleepycat/persist/model/BytecodeEnhancer$NotPersistentException;
    .locals 1

    .line 1637
    sget-object v0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->NOT_PERSISTENT:Lcom/sleepycat/persist/model/BytecodeEnhancer$NotPersistentException;

    return-object v0
.end method

.method private static appendString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "a"    # [Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .line 1621
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1622
    array-length v1, p0

    .line 1623
    .local v1, "len":I
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 1624
    .local v2, "a2":[Ljava/lang/String;
    invoke-static {p0, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1625
    aput-object p1, v2, v1

    .line 1626
    return-object v2

    .line 1628
    .end local v1    # "len":I
    .end local v2    # "a2":[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v0

    return-object v1
.end method

.method private static containsString([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "a"    # [Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .line 1607
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1608
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 1609
    .local v3, "t":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1610
    const/4 v0, 0x1

    return v0

    .line 1608
    .end local v3    # "t":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1614
    :cond_1
    return v0
.end method

.method private genBdbGetField()V
    .locals 11

    .line 1096
    iget-object v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->cv:Lcom/sleepycat/asm/ClassVisitor;

    .line 1097
    const/4 v1, 0x1

    const-string v2, "bdbGetField"

    const-string v3, "(Ljava/lang/Object;IIZ)Ljava/lang/Object;"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/sleepycat/asm/MethodVisitor;

    move-result-object v0

    .line 1099
    .local v0, "mv":Lcom/sleepycat/asm/MethodVisitor;
    invoke-virtual {v0}, Lcom/sleepycat/asm/MethodVisitor;->visitCode()V

    .line 1100
    const/16 v1, 0x15

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1101
    new-instance v3, Lcom/sleepycat/asm/Label;

    invoke-direct {v3}, Lcom/sleepycat/asm/Label;-><init>()V

    .line 1102
    .local v3, "l0":Lcom/sleepycat/asm/Label;
    const/16 v4, 0x9e

    invoke-virtual {v0, v4, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitJumpInsn(ILcom/sleepycat/asm/Label;)V

    .line 1103
    new-instance v4, Lcom/sleepycat/asm/Label;

    invoke-direct {v4}, Lcom/sleepycat/asm/Label;-><init>()V

    .line 1104
    .local v4, "l1":Lcom/sleepycat/asm/Label;
    iget-boolean v5, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->hasPersistentSuperclass:Z

    const/16 v6, 0xb0

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-eqz v5, :cond_0

    .line 1105
    const/4 v5, 0x0

    const/16 v9, 0x19

    invoke-virtual {v0, v9, v5}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1106
    invoke-virtual {v0, v9, v8}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1107
    const/4 v5, 0x2

    invoke-virtual {v0, v1, v5}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1108
    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1109
    invoke-virtual {v0, v7}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 1110
    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 1111
    invoke-virtual {v0, v1, v7}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1112
    const/16 v2, 0xb7

    iget-object v5, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->className:Ljava/lang/String;

    .line 1113
    const-string v9, "bdbGetField"

    const-string v10, "(Ljava/lang/Object;IIZ)Ljava/lang/Object;"

    invoke-virtual {v0, v2, v5, v9, v10}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    invoke-virtual {v0, v6}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_0

    .line 1117
    :cond_0
    const/16 v2, 0xa7

    invoke-virtual {v0, v2, v4}, Lcom/sleepycat/asm/MethodVisitor;->visitJumpInsn(ILcom/sleepycat/asm/Label;)V

    .line 1119
    :goto_0
    invoke-virtual {v0, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitLabel(Lcom/sleepycat/asm/Label;)V

    .line 1120
    invoke-virtual {v0, v1, v7}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1121
    new-instance v1, Lcom/sleepycat/asm/Label;

    invoke-direct {v1}, Lcom/sleepycat/asm/Label;-><init>()V

    .line 1122
    .local v1, "l2":Lcom/sleepycat/asm/Label;
    const/16 v2, 0x99

    invoke-virtual {v0, v2, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitJumpInsn(ILcom/sleepycat/asm/Label;)V

    .line 1123
    iget-object v2, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->secKeyFields:Ljava/util/List;

    invoke-direct {p0, v0, v2, v4}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genGetFieldSwitch(Lcom/sleepycat/asm/MethodVisitor;Ljava/util/List;Lcom/sleepycat/asm/Label;)V

    .line 1124
    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitLabel(Lcom/sleepycat/asm/Label;)V

    .line 1125
    iget-object v2, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->nonKeyFields:Ljava/util/List;

    invoke-direct {p0, v0, v2, v4}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genGetFieldSwitch(Lcom/sleepycat/asm/MethodVisitor;Ljava/util/List;Lcom/sleepycat/asm/Label;)V

    .line 1126
    invoke-virtual {v0, v4}, Lcom/sleepycat/asm/MethodVisitor;->visitLabel(Lcom/sleepycat/asm/Label;)V

    .line 1127
    invoke-virtual {v0, v8}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 1128
    invoke-virtual {v0, v6}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 1129
    const/4 v2, 0x5

    invoke-virtual {v0, v8, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitMaxs(II)V

    .line 1130
    invoke-virtual {v0}, Lcom/sleepycat/asm/MethodVisitor;->visitEnd()V

    .line 1131
    return-void
.end method

.method private genBdbIsPriKeyFieldNullOrZero()V
    .locals 6

    .line 382
    iget-object v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->cv:Lcom/sleepycat/asm/ClassVisitor;

    .line 383
    const/4 v1, 0x1

    const-string v2, "bdbIsPriKeyFieldNullOrZero"

    const-string v3, "()Z"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/sleepycat/asm/MethodVisitor;

    move-result-object v0

    .line 384
    .local v0, "mv":Lcom/sleepycat/asm/MethodVisitor;
    invoke-virtual {v0}, Lcom/sleepycat/asm/MethodVisitor;->visitCode()V

    .line 385
    iget-object v1, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->priKeyField:Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/16 v4, 0x19

    if-eqz v1, :cond_1

    .line 386
    invoke-virtual {v0, v4, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 387
    const/16 v1, 0xb4

    iget-object v3, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->className:Ljava/lang/String;

    iget-object v4, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->priKeyField:Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    iget-object v4, v4, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->name:Ljava/lang/String;

    iget-object v5, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->priKeyField:Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    iget-object v5, v5, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->type:Lcom/sleepycat/asm/Type;

    .line 389
    invoke-virtual {v5}, Lcom/sleepycat/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    .line 388
    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/sleepycat/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    new-instance v1, Lcom/sleepycat/asm/Label;

    invoke-direct {v1}, Lcom/sleepycat/asm/Label;-><init>()V

    .line 391
    .local v1, "l0":Lcom/sleepycat/asm/Label;
    iget-object v3, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->priKeyField:Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    iget-object v3, v3, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->type:Lcom/sleepycat/asm/Type;

    invoke-static {v3}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->isRefType(Lcom/sleepycat/asm/Type;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 392
    const/16 v3, 0xc7

    invoke-virtual {v0, v3, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitJumpInsn(ILcom/sleepycat/asm/Label;)V

    goto :goto_0

    .line 394
    :cond_0
    iget-object v3, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->priKeyField:Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    iget-object v3, v3, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->type:Lcom/sleepycat/asm/Type;

    invoke-static {v0, v3}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genBeforeCompareToZero(Lcom/sleepycat/asm/MethodVisitor;Lcom/sleepycat/asm/Type;)V

    .line 395
    const/16 v3, 0x9a

    invoke-virtual {v0, v3, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitJumpInsn(ILcom/sleepycat/asm/Label;)V

    .line 397
    :goto_0
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 398
    new-instance v3, Lcom/sleepycat/asm/Label;

    invoke-direct {v3}, Lcom/sleepycat/asm/Label;-><init>()V

    .line 399
    .local v3, "l1":Lcom/sleepycat/asm/Label;
    const/16 v4, 0xa7

    invoke-virtual {v0, v4, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitJumpInsn(ILcom/sleepycat/asm/Label;)V

    .line 400
    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitLabel(Lcom/sleepycat/asm/Label;)V

    .line 401
    invoke-virtual {v0, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 402
    invoke-virtual {v0, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitLabel(Lcom/sleepycat/asm/Label;)V

    .line 403
    .end local v1    # "l0":Lcom/sleepycat/asm/Label;
    .end local v3    # "l1":Lcom/sleepycat/asm/Label;
    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->hasPersistentSuperclass:Z

    if-eqz v1, :cond_2

    .line 404
    invoke-virtual {v0, v4, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 405
    const/16 v1, 0xb7

    iget-object v2, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->superclassName:Ljava/lang/String;

    .line 406
    const-string v3, "bdbIsPriKeyFieldNullOrZero"

    const-string v4, "()Z"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 409
    :cond_2
    invoke-virtual {v0, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 411
    :goto_1
    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 412
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitMaxs(II)V

    .line 413
    invoke-virtual {v0}, Lcom/sleepycat/asm/MethodVisitor;->visitEnd()V

    .line 414
    return-void
.end method

.method private genBdbNewArray()V
    .locals 6

    .line 358
    iget-object v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->cv:Lcom/sleepycat/asm/ClassVisitor;

    .line 359
    const/4 v1, 0x1

    const-string v2, "bdbNewArray"

    const-string v3, "(I)Ljava/lang/Object;"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/sleepycat/asm/MethodVisitor;

    move-result-object v0

    .line 360
    .local v0, "mv":Lcom/sleepycat/asm/MethodVisitor;
    invoke-virtual {v0}, Lcom/sleepycat/asm/MethodVisitor;->visitCode()V

    .line 361
    iget-boolean v1, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->isAbstract:Z

    const/4 v2, 0x2

    const/16 v3, 0xb0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 362
    invoke-virtual {v0, v4}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 363
    invoke-virtual {v0, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 364
    invoke-virtual {v0, v4, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitMaxs(II)V

    goto :goto_0

    .line 366
    :cond_0
    const/16 v1, 0x15

    invoke-virtual {v0, v1, v4}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 367
    const/16 v1, 0xbd

    iget-object v5, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->className:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lcom/sleepycat/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 368
    invoke-virtual {v0, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 369
    invoke-virtual {v0, v4, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitMaxs(II)V

    .line 370
    invoke-virtual {v0}, Lcom/sleepycat/asm/MethodVisitor;->visitEnd()V

    .line 372
    :goto_0
    return-void
.end method

.method private genBdbNewInstance()V
    .locals 7

    .line 333
    iget-object v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->cv:Lcom/sleepycat/asm/ClassVisitor;

    .line 334
    const/4 v1, 0x1

    const-string v2, "bdbNewInstance"

    const-string v3, "()Ljava/lang/Object;"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/sleepycat/asm/MethodVisitor;

    move-result-object v0

    .line 335
    .local v0, "mv":Lcom/sleepycat/asm/MethodVisitor;
    invoke-virtual {v0}, Lcom/sleepycat/asm/MethodVisitor;->visitCode()V

    .line 336
    iget-boolean v1, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->isAbstract:Z

    const/16 v2, 0xb0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 337
    invoke-virtual {v0, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 338
    invoke-virtual {v0, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 339
    invoke-virtual {v0, v3, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitMaxs(II)V

    goto :goto_0

    .line 341
    :cond_0
    const/16 v1, 0xbb

    iget-object v4, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->className:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/sleepycat/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 342
    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 343
    const/16 v1, 0xb7

    iget-object v4, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->className:Ljava/lang/String;

    const-string v5, "<init>"

    const-string v6, "()V"

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-virtual {v0, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 345
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitMaxs(II)V

    .line 347
    :goto_0
    invoke-virtual {v0}, Lcom/sleepycat/asm/MethodVisitor;->visitEnd()V

    .line 348
    return-void
.end method

.method private genBdbReadCompositeKeyFields()V
    .locals 7

    .line 728
    iget-object v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->cv:Lcom/sleepycat/asm/ClassVisitor;

    .line 729
    const/4 v1, 0x1

    const-string v2, "bdbReadCompositeKeyFields"

    const-string v3, "(Lcom/sleepycat/persist/impl/EntityInput;[Lcom/sleepycat/persist/impl/Format;)V"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/sleepycat/asm/MethodVisitor;

    move-result-object v0

    .line 733
    .local v0, "mv":Lcom/sleepycat/asm/MethodVisitor;
    invoke-virtual {v0}, Lcom/sleepycat/asm/MethodVisitor;->visitCode()V

    .line 734
    iget-boolean v1, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->isCompositeKey:Z

    if-eqz v1, :cond_2

    .line 735
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->nonKeyFields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 736
    iget-object v2, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->nonKeyFields:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    .line 738
    .local v2, "field":Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;
    invoke-direct {p0, v0, v2}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genReadSimpleKeyField(Lcom/sleepycat/asm/MethodVisitor;Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 740
    const/4 v3, 0x0

    const/16 v4, 0x19

    invoke-virtual {v0, v4, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 741
    const/4 v3, 0x1

    invoke-virtual {v0, v4, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 742
    const/4 v3, 0x2

    invoke-virtual {v0, v4, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 743
    const/16 v3, 0x7f

    if-gt v1, v3, :cond_0

    .line 744
    const/16 v3, 0x10

    invoke-virtual {v0, v3, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitIntInsn(II)V

    goto :goto_1

    .line 746
    :cond_0
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 748
    :goto_1
    const/16 v3, 0x32

    invoke-virtual {v0, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 749
    const/16 v3, 0xb9

    .line 750
    const-string v4, "com/sleepycat/persist/impl/EntityInput"

    const-string v5, "readKeyObject"

    const-string v6, "(Lcom/sleepycat/persist/impl/Format;)Ljava/lang/Object;"

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    const/16 v3, 0xc0

    iget-object v4, v2, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->type:Lcom/sleepycat/asm/Type;

    invoke-static {v4}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->getTypeInstName(Lcom/sleepycat/asm/Type;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sleepycat/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 756
    const/16 v3, 0xb5

    iget-object v4, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->className:Ljava/lang/String;

    iget-object v5, v2, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->name:Ljava/lang/String;

    iget-object v6, v2, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->type:Lcom/sleepycat/asm/Type;

    .line 758
    invoke-virtual {v6}, Lcom/sleepycat/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v6

    .line 757
    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/sleepycat/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    .end local v2    # "field":Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 762
    .end local v1    # "i":I
    :cond_2
    const/16 v1, 0xb1

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 763
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitMaxs(II)V

    .line 764
    invoke-virtual {v0}, Lcom/sleepycat/asm/MethodVisitor;->visitEnd()V

    .line 765
    return-void
.end method

.method private genBdbReadNonKeyFields()V
    .locals 6

    .line 661
    iget-object v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->cv:Lcom/sleepycat/asm/ClassVisitor;

    .line 662
    const/4 v1, 0x1

    const-string v2, "bdbReadNonKeyFields"

    const-string v3, "(Lcom/sleepycat/persist/impl/EntityInput;III)V"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/sleepycat/asm/MethodVisitor;

    move-result-object v0

    .line 664
    .local v0, "mv":Lcom/sleepycat/asm/MethodVisitor;
    invoke-virtual {v0}, Lcom/sleepycat/asm/MethodVisitor;->visitCode()V

    .line 665
    iget-boolean v1, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->isCompositeKey:Z

    if-nez v1, :cond_0

    .line 666
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genReadSuperKeyFields(Lcom/sleepycat/asm/MethodVisitor;Z)V

    .line 667
    iget-object v1, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->nonKeyFields:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genReadFieldSwitch(Lcom/sleepycat/asm/MethodVisitor;Ljava/util/List;)V

    .line 669
    :cond_0
    const/16 v1, 0xb1

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 670
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitMaxs(II)V

    .line 671
    invoke-virtual {v0}, Lcom/sleepycat/asm/MethodVisitor;->visitEnd()V

    .line 672
    return-void
.end method

.method private genBdbReadPriKeyField()V
    .locals 6

    .line 472
    iget-object v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->cv:Lcom/sleepycat/asm/ClassVisitor;

    .line 473
    const/4 v1, 0x1

    const-string v2, "bdbReadPriKeyField"

    const-string v3, "(Lcom/sleepycat/persist/impl/EntityInput;Lcom/sleepycat/persist/impl/Format;)V"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/sleepycat/asm/MethodVisitor;

    move-result-object v0

    .line 477
    .local v0, "mv":Lcom/sleepycat/asm/MethodVisitor;
    invoke-virtual {v0}, Lcom/sleepycat/asm/MethodVisitor;->visitCode()V

    .line 478
    iget-object v1, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->priKeyField:Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x19

    if-eqz v1, :cond_0

    .line 479
    invoke-direct {p0, v0, v1}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genReadSimpleKeyField(Lcom/sleepycat/asm/MethodVisitor;Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 481
    invoke-virtual {v0, v5, v4}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 482
    invoke-virtual {v0, v5, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 483
    invoke-virtual {v0, v5, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 484
    const/16 v1, 0xb9

    .line 485
    const-string v2, "com/sleepycat/persist/impl/EntityInput"

    const-string v3, "readKeyObject"

    const-string v4, "(Lcom/sleepycat/persist/impl/Format;)Ljava/lang/Object;"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const/16 v1, 0xc0

    iget-object v2, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->priKeyField:Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    iget-object v2, v2, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->type:Lcom/sleepycat/asm/Type;

    invoke-static {v2}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->getTypeInstName(Lcom/sleepycat/asm/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 490
    const/16 v1, 0xb5

    iget-object v2, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->className:Ljava/lang/String;

    iget-object v3, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->priKeyField:Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    iget-object v3, v3, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->priKeyField:Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    iget-object v4, v4, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->type:Lcom/sleepycat/asm/Type;

    .line 492
    invoke-virtual {v4}, Lcom/sleepycat/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    .line 491
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sleepycat/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 494
    :cond_0
    iget-boolean v1, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->hasPersistentSuperclass:Z

    if-eqz v1, :cond_1

    .line 495
    invoke-virtual {v0, v5, v4}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 496
    invoke-virtual {v0, v5, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 497
    invoke-virtual {v0, v5, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 498
    const/16 v1, 0xb7

    iget-object v2, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->superclassName:Ljava/lang/String;

    .line 499
    const-string v3, "bdbReadPriKeyField"

    const-string v4, "(Lcom/sleepycat/persist/impl/EntityInput;Lcom/sleepycat/persist/impl/Format;)V"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    :cond_1
    :goto_0
    const/16 v1, 0xb1

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 504
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitMaxs(II)V

    .line 505
    invoke-virtual {v0}, Lcom/sleepycat/asm/MethodVisitor;->visitEnd()V

    .line 506
    return-void
.end method

.method private genBdbReadSecKeyFields()V
    .locals 6

    .line 572
    iget-object v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->cv:Lcom/sleepycat/asm/ClassVisitor;

    .line 573
    const/4 v1, 0x1

    const-string v2, "bdbReadSecKeyFields"

    const-string v3, "(Lcom/sleepycat/persist/impl/EntityInput;III)V"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/sleepycat/asm/MethodVisitor;

    move-result-object v0

    .line 575
    .local v0, "mv":Lcom/sleepycat/asm/MethodVisitor;
    invoke-virtual {v0}, Lcom/sleepycat/asm/MethodVisitor;->visitCode()V

    .line 576
    iget-object v1, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->priKeyField:Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->type:Lcom/sleepycat/asm/Type;

    .line 577
    invoke-static {v1}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->isRefType(Lcom/sleepycat/asm/Type;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->priKeyField:Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    iget-boolean v1, v1, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->isString:Z

    if-nez v1, :cond_0

    .line 579
    invoke-direct {p0, v0, v2}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genRegisterPrimaryKey(Lcom/sleepycat/asm/MethodVisitor;Z)V

    goto :goto_0

    .line 580
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->priKeyField:Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    if-eqz v1, :cond_1

    iget-boolean v1, v1, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->isString:Z

    if-eqz v1, :cond_1

    .line 581
    invoke-direct {p0, v0}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genRegisterPrimaryStringKey(Lcom/sleepycat/asm/MethodVisitor;)V

    .line 583
    :cond_1
    :goto_0
    invoke-direct {p0, v0, v2}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genReadSuperKeyFields(Lcom/sleepycat/asm/MethodVisitor;Z)V

    .line 584
    iget-object v1, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->secKeyFields:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genReadFieldSwitch(Lcom/sleepycat/asm/MethodVisitor;Ljava/util/List;)V

    .line 585
    const/16 v1, 0xb1

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 586
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitMaxs(II)V

    .line 587
    invoke-virtual {v0}, Lcom/sleepycat/asm/MethodVisitor;->visitEnd()V

    .line 588
    return-void
.end method

.method private genBdbSetField()V
    .locals 9

    .line 1213
    iget-object v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->cv:Lcom/sleepycat/asm/ClassVisitor;

    .line 1214
    const/4 v1, 0x1

    const-string v2, "bdbSetField"

    const-string v3, "(Ljava/lang/Object;IIZLjava/lang/Object;)V"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/sleepycat/asm/MethodVisitor;

    move-result-object v0

    .line 1216
    .local v0, "mv":Lcom/sleepycat/asm/MethodVisitor;
    invoke-virtual {v0}, Lcom/sleepycat/asm/MethodVisitor;->visitCode()V

    .line 1217
    const/16 v1, 0x15

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1218
    new-instance v3, Lcom/sleepycat/asm/Label;

    invoke-direct {v3}, Lcom/sleepycat/asm/Label;-><init>()V

    .line 1219
    .local v3, "l0":Lcom/sleepycat/asm/Label;
    const/16 v4, 0x9e

    invoke-virtual {v0, v4, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitJumpInsn(ILcom/sleepycat/asm/Label;)V

    .line 1220
    iget-boolean v4, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->hasPersistentSuperclass:Z

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-eqz v4, :cond_0

    .line 1221
    const/4 v4, 0x0

    const/16 v7, 0x19

    invoke-virtual {v0, v7, v4}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1222
    const/4 v4, 0x1

    invoke-virtual {v0, v7, v4}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1223
    invoke-virtual {v0, v1, v5}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1224
    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1225
    invoke-virtual {v0, v6}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 1226
    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 1227
    invoke-virtual {v0, v1, v6}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1228
    const/4 v2, 0x5

    invoke-virtual {v0, v7, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1229
    const/16 v2, 0xb7

    iget-object v4, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->className:Ljava/lang/String;

    .line 1230
    const-string v7, "bdbSetField"

    const-string v8, "(Ljava/lang/Object;IIZLjava/lang/Object;)V"

    invoke-virtual {v0, v2, v4, v7, v8}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    :cond_0
    const/16 v2, 0xb1

    invoke-virtual {v0, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 1234
    invoke-virtual {v0, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitLabel(Lcom/sleepycat/asm/Label;)V

    .line 1235
    invoke-virtual {v0, v1, v6}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1236
    new-instance v1, Lcom/sleepycat/asm/Label;

    invoke-direct {v1}, Lcom/sleepycat/asm/Label;-><init>()V

    .line 1237
    .local v1, "l2":Lcom/sleepycat/asm/Label;
    const/16 v4, 0x99

    invoke-virtual {v0, v4, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitJumpInsn(ILcom/sleepycat/asm/Label;)V

    .line 1238
    new-instance v4, Lcom/sleepycat/asm/Label;

    invoke-direct {v4}, Lcom/sleepycat/asm/Label;-><init>()V

    .line 1239
    .local v4, "l1":Lcom/sleepycat/asm/Label;
    iget-object v6, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->secKeyFields:Ljava/util/List;

    invoke-direct {p0, v0, v6, v4}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genSetFieldSwitch(Lcom/sleepycat/asm/MethodVisitor;Ljava/util/List;Lcom/sleepycat/asm/Label;)V

    .line 1240
    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitLabel(Lcom/sleepycat/asm/Label;)V

    .line 1241
    iget-object v6, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->nonKeyFields:Ljava/util/List;

    invoke-direct {p0, v0, v6, v4}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genSetFieldSwitch(Lcom/sleepycat/asm/MethodVisitor;Ljava/util/List;Lcom/sleepycat/asm/Label;)V

    .line 1242
    invoke-virtual {v0, v4}, Lcom/sleepycat/asm/MethodVisitor;->visitLabel(Lcom/sleepycat/asm/Label;)V

    .line 1243
    invoke-virtual {v0, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 1244
    const/4 v2, 0x6

    invoke-virtual {v0, v5, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitMaxs(II)V

    .line 1245
    invoke-virtual {v0}, Lcom/sleepycat/asm/MethodVisitor;->visitEnd()V

    .line 1246
    return-void
.end method

.method private genBdbSetPriField()V
    .locals 6

    .line 1259
    iget-object v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->cv:Lcom/sleepycat/asm/ClassVisitor;

    .line 1260
    const/4 v1, 0x1

    const-string v2, "bdbSetPriField"

    const-string v3, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/sleepycat/asm/MethodVisitor;

    move-result-object v0

    .line 1262
    .local v0, "mv":Lcom/sleepycat/asm/MethodVisitor;
    invoke-virtual {v0}, Lcom/sleepycat/asm/MethodVisitor;->visitCode()V

    .line 1263
    iget-object v1, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->priKeyField:Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/16 v4, 0x19

    if-eqz v1, :cond_1

    .line 1264
    invoke-virtual {v0, v4, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1265
    invoke-virtual {v0, v4, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1266
    iget-object v1, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->priKeyField:Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    iget-object v1, v1, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->type:Lcom/sleepycat/asm/Type;

    invoke-static {v1}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->isRefType(Lcom/sleepycat/asm/Type;)Z

    move-result v1

    const/16 v2, 0xc0

    if-eqz v1, :cond_0

    .line 1267
    iget-object v1, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->priKeyField:Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    iget-object v1, v1, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->type:Lcom/sleepycat/asm/Type;

    invoke-static {v1}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->getTypeInstName(Lcom/sleepycat/asm/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    goto :goto_0

    .line 1269
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->priKeyField:Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    iget-object v1, v1, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->type:Lcom/sleepycat/asm/Type;

    invoke-virtual {v1}, Lcom/sleepycat/asm/Type;->getSort()I

    move-result v1

    .line 1270
    .local v1, "sort":I
    nop

    .line 1272
    invoke-static {v1}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->getPrimitiveWrapperClass(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    const/16 v5, 0x2f

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 1271
    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 1273
    invoke-direct {p0, v0, v1}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genUnwrapPrimitive(Lcom/sleepycat/asm/MethodVisitor;I)V

    .line 1275
    .end local v1    # "sort":I
    :goto_0
    const/16 v1, 0xb5

    iget-object v2, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->className:Ljava/lang/String;

    iget-object v3, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->priKeyField:Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    iget-object v3, v3, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->priKeyField:Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    iget-object v4, v4, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->type:Lcom/sleepycat/asm/Type;

    .line 1277
    invoke-virtual {v4}, Lcom/sleepycat/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    .line 1276
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sleepycat/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1278
    :cond_1
    iget-boolean v1, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->hasPersistentSuperclass:Z

    if-eqz v1, :cond_2

    .line 1279
    invoke-virtual {v0, v4, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1280
    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1281
    invoke-virtual {v0, v4, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1282
    const/16 v1, 0xb7

    iget-object v2, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->superclassName:Ljava/lang/String;

    .line 1283
    const-string v3, "bdbSetPriField"

    const-string v4, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    :cond_2
    :goto_1
    const/16 v1, 0xb1

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 1287
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitMaxs(II)V

    .line 1288
    invoke-virtual {v0}, Lcom/sleepycat/asm/MethodVisitor;->visitEnd()V

    .line 1289
    return-void
.end method

.method private genBdbWriteCompositeKeyFields()V
    .locals 8

    .line 683
    iget-object v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->cv:Lcom/sleepycat/asm/ClassVisitor;

    .line 684
    const/4 v1, 0x1

    const-string v2, "bdbWriteCompositeKeyFields"

    const-string v3, "(Lcom/sleepycat/persist/impl/EntityOutput;[Lcom/sleepycat/persist/impl/Format;)V"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/sleepycat/asm/MethodVisitor;

    move-result-object v0

    .line 688
    .local v0, "mv":Lcom/sleepycat/asm/MethodVisitor;
    invoke-virtual {v0}, Lcom/sleepycat/asm/MethodVisitor;->visitCode()V

    .line 689
    iget-boolean v1, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->isCompositeKey:Z

    if-eqz v1, :cond_2

    .line 690
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->nonKeyFields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 691
    iget-object v2, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->nonKeyFields:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    .line 692
    .local v2, "field":Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;
    invoke-direct {p0, v0, v2}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genWriteSimpleKeyField(Lcom/sleepycat/asm/MethodVisitor;Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 694
    const/16 v3, 0x19

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 695
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 696
    const/16 v4, 0xb4

    iget-object v5, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->className:Ljava/lang/String;

    iget-object v6, v2, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->name:Ljava/lang/String;

    iget-object v7, v2, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->type:Lcom/sleepycat/asm/Type;

    .line 698
    invoke-virtual {v7}, Lcom/sleepycat/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v7

    .line 697
    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/sleepycat/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 700
    const/16 v3, 0x7f

    if-gt v1, v3, :cond_0

    .line 701
    const/16 v3, 0x10

    invoke-virtual {v0, v3, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitIntInsn(II)V

    goto :goto_1

    .line 703
    :cond_0
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 705
    :goto_1
    const/16 v3, 0x32

    invoke-virtual {v0, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 706
    const/16 v3, 0xb9

    .line 707
    const-string v4, "com/sleepycat/persist/impl/EntityOutput"

    const-string v5, "writeKeyObject"

    const-string v6, "(Ljava/lang/Object;Lcom/sleepycat/persist/impl/Format;)V"

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    .end local v2    # "field":Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 715
    .end local v1    # "i":I
    :cond_2
    const/16 v1, 0xb1

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 716
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitMaxs(II)V

    .line 717
    invoke-virtual {v0}, Lcom/sleepycat/asm/MethodVisitor;->visitEnd()V

    .line 718
    return-void
.end method

.method private genBdbWriteNonKeyFields()V
    .locals 6

    .line 631
    iget-object v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->cv:Lcom/sleepycat/asm/ClassVisitor;

    .line 632
    const/4 v1, 0x1

    const-string v2, "bdbWriteNonKeyFields"

    const-string v3, "(Lcom/sleepycat/persist/impl/EntityOutput;)V"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/sleepycat/asm/MethodVisitor;

    move-result-object v0

    .line 634
    .local v0, "mv":Lcom/sleepycat/asm/MethodVisitor;
    invoke-virtual {v0}, Lcom/sleepycat/asm/MethodVisitor;->visitCode()V

    .line 635
    iget-boolean v1, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->isCompositeKey:Z

    if-nez v1, :cond_1

    .line 636
    iget-boolean v1, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->hasPersistentSuperclass:Z

    if-eqz v1, :cond_0

    .line 637
    const/4 v1, 0x0

    const/16 v2, 0x19

    invoke-virtual {v0, v2, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 638
    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 639
    const/16 v1, 0xb7

    iget-object v2, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->superclassName:Ljava/lang/String;

    .line 640
    const-string v3, "bdbWriteNonKeyFields"

    const-string v4, "(Lcom/sleepycat/persist/impl/EntityOutput;)V"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->nonKeyFields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    .line 644
    .local v2, "field":Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;
    invoke-direct {p0, v0, v2}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genWriteField(Lcom/sleepycat/asm/MethodVisitor;Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;)V

    .line 645
    .end local v2    # "field":Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;
    goto :goto_0

    .line 647
    :cond_1
    const/16 v1, 0xb1

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 648
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitMaxs(II)V

    .line 649
    invoke-virtual {v0}, Lcom/sleepycat/asm/MethodVisitor;->visitEnd()V

    .line 650
    return-void
.end method

.method private genBdbWritePriKeyField()V
    .locals 7

    .line 426
    iget-object v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->cv:Lcom/sleepycat/asm/ClassVisitor;

    .line 427
    const/4 v1, 0x1

    const-string v2, "bdbWritePriKeyField"

    const-string v3, "(Lcom/sleepycat/persist/impl/EntityOutput;Lcom/sleepycat/persist/impl/Format;)V"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/sleepycat/asm/MethodVisitor;

    move-result-object v0

    .line 431
    .local v0, "mv":Lcom/sleepycat/asm/MethodVisitor;
    invoke-virtual {v0}, Lcom/sleepycat/asm/MethodVisitor;->visitCode()V

    .line 432
    iget-object v1, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->priKeyField:Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x19

    if-eqz v1, :cond_0

    .line 433
    invoke-direct {p0, v0, v1}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genWriteSimpleKeyField(Lcom/sleepycat/asm/MethodVisitor;Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 435
    invoke-virtual {v0, v5, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 436
    invoke-virtual {v0, v5, v4}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 437
    const/16 v1, 0xb4

    iget-object v3, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->className:Ljava/lang/String;

    iget-object v4, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->priKeyField:Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    iget-object v4, v4, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->name:Ljava/lang/String;

    iget-object v6, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->priKeyField:Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    iget-object v6, v6, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->type:Lcom/sleepycat/asm/Type;

    .line 439
    invoke-virtual {v6}, Lcom/sleepycat/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v6

    .line 438
    invoke-virtual {v0, v1, v3, v4, v6}, Lcom/sleepycat/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-virtual {v0, v5, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 441
    const/16 v1, 0xb9

    .line 442
    const-string v2, "com/sleepycat/persist/impl/EntityOutput"

    const-string v3, "writeKeyObject"

    const-string v4, "(Ljava/lang/Object;Lcom/sleepycat/persist/impl/Format;)V"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 448
    :cond_0
    iget-boolean v1, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->hasPersistentSuperclass:Z

    if-eqz v1, :cond_1

    .line 449
    invoke-virtual {v0, v5, v4}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 450
    invoke-virtual {v0, v5, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 451
    invoke-virtual {v0, v5, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 452
    const/16 v1, 0xb7

    iget-object v2, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->superclassName:Ljava/lang/String;

    .line 453
    const-string v3, "bdbWritePriKeyField"

    const-string v4, "(Lcom/sleepycat/persist/impl/EntityOutput;Lcom/sleepycat/persist/impl/Format;)V"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    :cond_1
    :goto_0
    const/16 v1, 0xb1

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 458
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitMaxs(II)V

    .line 459
    invoke-virtual {v0}, Lcom/sleepycat/asm/MethodVisitor;->visitEnd()V

    .line 460
    return-void
.end method

.method private genBdbWriteSecKeyFields()V
    .locals 6

    .line 518
    iget-object v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->cv:Lcom/sleepycat/asm/ClassVisitor;

    .line 519
    const/4 v1, 0x1

    const-string v2, "bdbWriteSecKeyFields"

    const-string v3, "(Lcom/sleepycat/persist/impl/EntityOutput;)V"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/sleepycat/asm/MethodVisitor;

    move-result-object v0

    .line 521
    .local v0, "mv":Lcom/sleepycat/asm/MethodVisitor;
    invoke-virtual {v0}, Lcom/sleepycat/asm/MethodVisitor;->visitCode()V

    .line 527
    iget-object v1, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->priKeyField:Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->type:Lcom/sleepycat/asm/Type;

    .line 528
    invoke-static {v1}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->isRefType(Lcom/sleepycat/asm/Type;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->priKeyField:Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    iget-boolean v1, v1, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->isString:Z

    if-nez v1, :cond_0

    .line 530
    invoke-direct {p0, v0, v2}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genRegisterPrimaryKey(Lcom/sleepycat/asm/MethodVisitor;Z)V

    .line 532
    :cond_0
    iget-boolean v1, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->hasPersistentSuperclass:Z

    if-eqz v1, :cond_1

    .line 533
    const/16 v1, 0x19

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 534
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 535
    const/16 v1, 0xb7

    iget-object v2, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->superclassName:Ljava/lang/String;

    .line 536
    const-string v3, "bdbWriteSecKeyFields"

    const-string v4, "(Lcom/sleepycat/persist/impl/EntityOutput;)V"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->secKeyFields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    .line 540
    .local v2, "field":Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;
    invoke-direct {p0, v0, v2}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genWriteField(Lcom/sleepycat/asm/MethodVisitor;Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;)V

    .line 541
    .end local v2    # "field":Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;
    goto :goto_0

    .line 542
    :cond_2
    const/16 v1, 0xb1

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 543
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitMaxs(II)V

    .line 544
    invoke-virtual {v0}, Lcom/sleepycat/asm/MethodVisitor;->visitEnd()V

    .line 545
    return-void
.end method

.method private static genBeforeCompareToZero(Lcom/sleepycat/asm/MethodVisitor;Lcom/sleepycat/asm/Type;)V
    .locals 1
    .param p0, "mv"    # Lcom/sleepycat/asm/MethodVisitor;
    .param p1, "type"    # Lcom/sleepycat/asm/Type;

    .line 1555
    invoke-virtual {p1}, Lcom/sleepycat/asm/Type;->getSort()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1565
    :pswitch_0
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 1566
    const/16 v0, 0x97

    invoke-virtual {p0, v0}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_0

    .line 1557
    :pswitch_1
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 1558
    const/16 v0, 0x94

    invoke-virtual {p0, v0}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 1559
    goto :goto_0

    .line 1561
    :pswitch_2
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 1562
    const/16 v0, 0x95

    invoke-virtual {p0, v0}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 1563
    nop

    .line 1569
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private genGetFieldSwitch(Lcom/sleepycat/asm/MethodVisitor;Ljava/util/List;Lcom/sleepycat/asm/Label;)V
    .locals 9
    .param p1, "mv"    # Lcom/sleepycat/asm/MethodVisitor;
    .param p3, "defaultLabel"    # Lcom/sleepycat/asm/Label;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/asm/MethodVisitor;",
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;",
            ">;",
            "Lcom/sleepycat/asm/Label;",
            ")V"
        }
    .end annotation

    .line 1157
    .local p2, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 1158
    .local v0, "nFields":I
    if-nez v0, :cond_0

    .line 1159
    const/16 v1, 0xa7

    invoke-virtual {p1, v1, p3}, Lcom/sleepycat/asm/MethodVisitor;->visitJumpInsn(ILcom/sleepycat/asm/Label;)V

    .line 1160
    return-void

    .line 1162
    :cond_0
    new-array v1, v0, [Lcom/sleepycat/asm/Label;

    .line 1163
    .local v1, "labels":[Lcom/sleepycat/asm/Label;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1164
    new-instance v3, Lcom/sleepycat/asm/Label;

    invoke-direct {v3}, Lcom/sleepycat/asm/Label;-><init>()V

    aput-object v3, v1, v2

    .line 1163
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1166
    .end local v2    # "i":I
    :cond_1
    const/16 v2, 0x15

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1167
    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2, p3, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitTableSwitchInsn(IILcom/sleepycat/asm/Label;[Lcom/sleepycat/asm/Label;)V

    .line 1168
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 1169
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    .line 1170
    .local v4, "field":Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;
    aget-object v5, v1, v2

    invoke-virtual {p1, v5}, Lcom/sleepycat/asm/MethodVisitor;->visitLabel(Lcom/sleepycat/asm/Label;)V

    .line 1171
    const/16 v5, 0x19

    invoke-virtual {p1, v5, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1172
    const/16 v5, 0xb4

    iget-object v6, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->className:Ljava/lang/String;

    iget-object v7, v4, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->name:Ljava/lang/String;

    iget-object v8, v4, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->type:Lcom/sleepycat/asm/Type;

    .line 1173
    invoke-virtual {v8}, Lcom/sleepycat/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v5, v6, v7, v8}, Lcom/sleepycat/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    iget-object v5, v4, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->type:Lcom/sleepycat/asm/Type;

    invoke-static {v5}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->isRefType(Lcom/sleepycat/asm/Type;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1175
    iget-object v5, v4, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->type:Lcom/sleepycat/asm/Type;

    invoke-virtual {v5}, Lcom/sleepycat/asm/Type;->getSort()I

    move-result v5

    invoke-direct {p0, p1, v5}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genWrapPrimitive(Lcom/sleepycat/asm/MethodVisitor;I)V

    .line 1177
    :cond_2
    const/16 v5, 0xb0

    invoke-virtual {p1, v5}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 1168
    .end local v4    # "field":Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1179
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method private genReadField(Lcom/sleepycat/asm/MethodVisitor;Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;)V
    .locals 5
    .param p1, "mv"    # Lcom/sleepycat/asm/MethodVisitor;
    .param p2, "field"    # Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    .line 969
    const/16 v0, 0x19

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 970
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 971
    iget-boolean v0, p2, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->isString:Z

    const/16 v1, 0xc0

    const-string v2, "()Ljava/lang/Object;"

    const-string v3, "com/sleepycat/persist/impl/EntityInput"

    const/16 v4, 0xb9

    if-eqz v0, :cond_0

    .line 977
    nop

    .line 978
    const-string v0, "readStringObject"

    invoke-virtual {p1, v4, v3, v0, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    iget-object v0, p2, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->type:Lcom/sleepycat/asm/Type;

    invoke-static {v0}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->getTypeInstName(Lcom/sleepycat/asm/Type;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/sleepycat/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    goto :goto_0

    .line 981
    :cond_0
    iget-object v0, p2, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->type:Lcom/sleepycat/asm/Type;

    invoke-static {v0}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->isRefType(Lcom/sleepycat/asm/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 982
    nop

    .line 983
    const-string v0, "readObject"

    invoke-virtual {p1, v4, v3, v0, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    iget-object v0, p2, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->type:Lcom/sleepycat/asm/Type;

    invoke-static {v0}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->getTypeInstName(Lcom/sleepycat/asm/Type;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/sleepycat/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    goto :goto_0

    .line 987
    :cond_1
    iget-object v0, p2, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->type:Lcom/sleepycat/asm/Type;

    invoke-virtual {v0}, Lcom/sleepycat/asm/Type;->getSort()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genReadPrimitive(Lcom/sleepycat/asm/MethodVisitor;I)V

    .line 989
    :goto_0
    const/16 v0, 0xb5

    iget-object v1, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->className:Ljava/lang/String;

    iget-object v2, p2, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->name:Ljava/lang/String;

    iget-object v3, p2, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->type:Lcom/sleepycat/asm/Type;

    .line 990
    invoke-virtual {v3}, Lcom/sleepycat/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    return-void
.end method

.method private genReadFieldSwitch(Lcom/sleepycat/asm/MethodVisitor;Ljava/util/List;)V
    .locals 9
    .param p1, "mv"    # Lcom/sleepycat/asm/MethodVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/asm/MethodVisitor;",
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;",
            ">;)V"
        }
    .end annotation

    .line 914
    .local p2, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 915
    .local v0, "nFields":I
    if-lez v0, :cond_4

    .line 916
    const/16 v1, 0x15

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 917
    new-instance v3, Lcom/sleepycat/asm/Label;

    invoke-direct {v3}, Lcom/sleepycat/asm/Label;-><init>()V

    .line 918
    .local v3, "pastSwitch":Lcom/sleepycat/asm/Label;
    const/16 v4, 0x9d

    invoke-virtual {p1, v4, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitJumpInsn(ILcom/sleepycat/asm/Label;)V

    .line 919
    new-array v4, v0, [Lcom/sleepycat/asm/Label;

    .line 920
    .local v4, "labels":[Lcom/sleepycat/asm/Label;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_0

    .line 921
    new-instance v6, Lcom/sleepycat/asm/Label;

    invoke-direct {v6}, Lcom/sleepycat/asm/Label;-><init>()V

    aput-object v6, v4, v5

    .line 920
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 923
    .end local v5    # "i":I
    :cond_0
    const/4 v5, 0x2

    invoke-virtual {p1, v1, v5}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 924
    const/4 v5, 0x0

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p1, v5, v6, v3, v4}, Lcom/sleepycat/asm/MethodVisitor;->visitTableSwitchInsn(IILcom/sleepycat/asm/Label;[Lcom/sleepycat/asm/Label;)V

    .line 925
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    if-ge v5, v0, :cond_3

    .line 926
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    .line 927
    .local v6, "field":Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;
    aget-object v7, v4, v5

    invoke-virtual {p1, v7}, Lcom/sleepycat/asm/MethodVisitor;->visitLabel(Lcom/sleepycat/asm/Label;)V

    .line 928
    invoke-direct {p0, p1, v6}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genReadField(Lcom/sleepycat/asm/MethodVisitor;Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;)V

    .line 929
    add-int/lit8 v7, v0, -0x1

    if-ge v5, v7, :cond_2

    .line 930
    add-int/lit8 v7, v5, 0x1

    aget-object v7, v4, v7

    .line 931
    .local v7, "nextCase":Lcom/sleepycat/asm/Label;
    const/4 v8, 0x3

    invoke-virtual {p1, v1, v8}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 932
    if-nez v5, :cond_1

    .line 933
    const/16 v8, 0x9a

    invoke-virtual {p1, v8, v7}, Lcom/sleepycat/asm/MethodVisitor;->visitJumpInsn(ILcom/sleepycat/asm/Label;)V

    goto :goto_3

    .line 935
    :cond_1
    packed-switch v5, :pswitch_data_0

    .line 952
    const/16 v8, 0x10

    invoke-virtual {p1, v8, v5}, Lcom/sleepycat/asm/MethodVisitor;->visitIntInsn(II)V

    goto :goto_2

    .line 949
    :pswitch_0
    const/16 v8, 0x8

    invoke-virtual {p1, v8}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 950
    goto :goto_2

    .line 946
    :pswitch_1
    const/4 v8, 0x7

    invoke-virtual {p1, v8}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 947
    goto :goto_2

    .line 943
    :pswitch_2
    const/4 v8, 0x6

    invoke-virtual {p1, v8}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 944
    goto :goto_2

    .line 940
    :pswitch_3
    const/4 v8, 0x5

    invoke-virtual {p1, v8}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 941
    goto :goto_2

    .line 937
    :pswitch_4
    invoke-virtual {p1, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 938
    nop

    .line 954
    :goto_2
    const/16 v8, 0xa0

    invoke-virtual {p1, v8, v7}, Lcom/sleepycat/asm/MethodVisitor;->visitJumpInsn(ILcom/sleepycat/asm/Label;)V

    .line 956
    :goto_3
    const/16 v8, 0xa7

    invoke-virtual {p1, v8, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitJumpInsn(ILcom/sleepycat/asm/Label;)V

    .line 925
    .end local v6    # "field":Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;
    .end local v7    # "nextCase":Lcom/sleepycat/asm/Label;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 959
    .end local v5    # "i":I
    :cond_3
    invoke-virtual {p1, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitLabel(Lcom/sleepycat/asm/Label;)V

    .line 961
    .end local v3    # "pastSwitch":Lcom/sleepycat/asm/Label;
    .end local v4    # "labels":[Lcom/sleepycat/asm/Label;
    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private genReadPrimitive(Lcom/sleepycat/asm/MethodVisitor;I)V
    .locals 4
    .param p1, "mv"    # Lcom/sleepycat/asm/MethodVisitor;
    .param p2, "sort"    # I

    .line 1401
    const-string v0, "com/sleepycat/persist/impl/EntityInput"

    const/16 v1, 0xb9

    packed-switch p2, :pswitch_data_0

    .line 1443
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1438
    :pswitch_0
    nop

    .line 1439
    const-string v2, "readSortedDouble"

    const-string v3, "()D"

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    goto :goto_0

    .line 1428
    :pswitch_1
    nop

    .line 1429
    const-string v2, "readLong"

    const-string v3, "()J"

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    goto :goto_0

    .line 1433
    :pswitch_2
    nop

    .line 1434
    const-string v2, "readSortedFloat"

    const-string v3, "()F"

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    goto :goto_0

    .line 1423
    :pswitch_3
    nop

    .line 1424
    const-string v2, "readInt"

    const-string v3, "()I"

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    goto :goto_0

    .line 1418
    :pswitch_4
    nop

    .line 1419
    const-string v2, "readShort"

    const-string v3, "()S"

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    goto :goto_0

    .line 1413
    :pswitch_5
    nop

    .line 1414
    const-string v2, "readByte"

    const-string v3, "()B"

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    goto :goto_0

    .line 1408
    :pswitch_6
    nop

    .line 1409
    const-string v2, "readChar"

    const-string v3, "()C"

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    goto :goto_0

    .line 1403
    :pswitch_7
    nop

    .line 1404
    const-string v2, "readBoolean"

    const-string v3, "()Z"

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    nop

    .line 1445
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private genReadPrimitiveField(Lcom/sleepycat/asm/MethodVisitor;Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;)Z
    .locals 6
    .param p1, "mv"    # Lcom/sleepycat/asm/MethodVisitor;
    .param p2, "field"    # Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    .line 1052
    iget-object v0, p2, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->type:Lcom/sleepycat/asm/Type;

    invoke-virtual {v0}, Lcom/sleepycat/asm/Type;->getSort()I

    move-result v0

    .line 1053
    .local v0, "sort":I
    const/4 v1, 0x0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 1056
    :cond_0
    const/16 v2, 0x19

    invoke-virtual {p1, v2, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1057
    const/4 v1, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1058
    invoke-direct {p0, p1, v0}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genReadPrimitive(Lcom/sleepycat/asm/MethodVisitor;I)V

    .line 1059
    const/16 v2, 0xb5

    iget-object v3, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->className:Ljava/lang/String;

    iget-object v4, p2, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->name:Ljava/lang/String;

    iget-object v5, p2, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->type:Lcom/sleepycat/asm/Type;

    .line 1060
    invoke-virtual {v5}, Lcom/sleepycat/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/sleepycat/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    return v1

    .line 1054
    :cond_1
    :goto_0
    return v1
.end method

.method private genReadSimpleKeyField(Lcom/sleepycat/asm/MethodVisitor;Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;)Z
    .locals 8
    .param p1, "mv"    # Lcom/sleepycat/asm/MethodVisitor;
    .param p2, "field"    # Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    .line 1003
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genReadPrimitiveField(Lcom/sleepycat/asm/MethodVisitor;Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1004
    return v1

    .line 1006
    :cond_0
    iget-object v0, p2, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->type:Lcom/sleepycat/asm/Type;

    invoke-virtual {v0}, Lcom/sleepycat/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1007
    .local v0, "fieldClassName":Ljava/lang/String;
    invoke-static {v0}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->isSimpleRefType(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 1008
    return v3

    .line 1010
    :cond_1
    sget-object v2, Lcom/sleepycat/persist/model/BytecodeEnhancer;->PRIMITIVE_WRAPPERS:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1011
    .local v2, "sort":Ljava/lang/Integer;
    const/16 v4, 0x19

    if-eqz v2, :cond_2

    .line 1012
    invoke-virtual {p1, v4, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1013
    invoke-virtual {p1, v4, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1014
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genReadPrimitive(Lcom/sleepycat/asm/MethodVisitor;I)V

    .line 1015
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genWrapPrimitive(Lcom/sleepycat/asm/MethodVisitor;I)V

    goto/16 :goto_0

    .line 1016
    :cond_2
    const-class v5, Ljava/util/Date;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1018
    invoke-virtual {p1, v4, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1019
    const/16 v3, 0xbb

    const-string v5, "java/util/Date"

    invoke-virtual {p1, v3, v5}, Lcom/sleepycat/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 1020
    const/16 v3, 0x59

    invoke-virtual {p1, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 1021
    invoke-virtual {p1, v4, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1022
    const/4 v3, 0x7

    invoke-direct {p0, p1, v3}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genReadPrimitive(Lcom/sleepycat/asm/MethodVisitor;I)V

    .line 1023
    const/16 v3, 0xb7

    .line 1024
    const-string v4, "<init>"

    const-string v6, "(J)V"

    invoke-virtual {p1, v3, v5, v4, v6}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1025
    :cond_3
    const-class v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "com/sleepycat/persist/impl/EntityInput"

    const/16 v7, 0xb9

    if-eqz v5, :cond_4

    .line 1026
    invoke-virtual {p1, v4, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1027
    invoke-virtual {p1, v4, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1028
    nop

    .line 1029
    const-string v3, "readString"

    const-string v4, "()Ljava/lang/String;"

    invoke-virtual {p1, v7, v6, v3, v4}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1031
    :cond_4
    const-class v5, Ljava/math/BigInteger;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1032
    invoke-virtual {p1, v4, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1033
    invoke-virtual {p1, v4, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1034
    nop

    .line 1035
    const-string v3, "readBigInteger"

    const-string v4, "()Ljava/math/BigInteger;"

    invoke-virtual {p1, v7, v6, v3, v4}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1037
    :cond_5
    const-class v5, Ljava/math/BigDecimal;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1038
    invoke-virtual {p1, v4, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1039
    invoke-virtual {p1, v4, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1040
    nop

    .line 1041
    const-string v3, "readSortedBigDecimal"

    const-string v4, "()Ljava/math/BigDecimal;"

    invoke-virtual {p1, v7, v6, v3, v4}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    :goto_0
    const/16 v3, 0xb5

    iget-object v4, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->className:Ljava/lang/String;

    iget-object v5, p2, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->name:Ljava/lang/String;

    iget-object v6, p2, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->type:Lcom/sleepycat/asm/Type;

    .line 1047
    invoke-virtual {v6}, Lcom/sleepycat/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/sleepycat/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    return v1

    .line 1044
    :cond_6
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private genReadSuperKeyFields(Lcom/sleepycat/asm/MethodVisitor;Z)V
    .locals 5
    .param p1, "mv"    # Lcom/sleepycat/asm/MethodVisitor;
    .param p2, "areSecKeyFields"    # Z

    .line 874
    iget-boolean v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->hasPersistentSuperclass:Z

    if-eqz v0, :cond_1

    .line 875
    new-instance v0, Lcom/sleepycat/asm/Label;

    invoke-direct {v0}, Lcom/sleepycat/asm/Label;-><init>()V

    .line 876
    .local v0, "next":Lcom/sleepycat/asm/Label;
    const/16 v1, 0x15

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 877
    const/16 v3, 0x99

    invoke-virtual {p1, v3, v0}, Lcom/sleepycat/asm/MethodVisitor;->visitJumpInsn(ILcom/sleepycat/asm/Label;)V

    .line 878
    const/4 v3, 0x0

    const/16 v4, 0x19

    invoke-virtual {p1, v4, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 879
    const/4 v3, 0x1

    invoke-virtual {p1, v4, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 880
    const/4 v3, 0x2

    invoke-virtual {p1, v1, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 881
    const/4 v3, 0x3

    invoke-virtual {p1, v1, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 882
    invoke-virtual {p1, v1, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 883
    invoke-virtual {p1, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 884
    const/16 v1, 0x64

    invoke-virtual {p1, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 885
    if-eqz p2, :cond_0

    const-string v1, "bdbReadSecKeyFields"

    goto :goto_0

    :cond_0
    const-string v1, "bdbReadNonKeyFields"

    .line 887
    .local v1, "name":Ljava/lang/String;
    :goto_0
    const/16 v2, 0xb7

    iget-object v3, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->superclassName:Ljava/lang/String;

    .line 888
    const-string v4, "(Lcom/sleepycat/persist/impl/EntityInput;III)V"

    invoke-virtual {p1, v2, v3, v1, v4}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    invoke-virtual {p1, v0}, Lcom/sleepycat/asm/MethodVisitor;->visitLabel(Lcom/sleepycat/asm/Label;)V

    .line 892
    .end local v0    # "next":Lcom/sleepycat/asm/Label;
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private genRegisterPrimaryKey(Lcom/sleepycat/asm/MethodVisitor;Z)V
    .locals 5
    .param p1, "mv"    # Lcom/sleepycat/asm/MethodVisitor;
    .param p2, "input"    # Z

    .line 596
    if-eqz p2, :cond_0

    const-string v0, "com/sleepycat/persist/impl/EntityInput"

    goto :goto_0

    :cond_0
    const-string v0, "com/sleepycat/persist/impl/EntityOutput"

    .line 599
    .local v0, "entityInputOrOutputClass":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x1

    const/16 v2, 0x19

    invoke-virtual {p1, v2, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 600
    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 601
    const/16 v1, 0xb4

    iget-object v2, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->className:Ljava/lang/String;

    iget-object v3, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->priKeyField:Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    iget-object v3, v3, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->priKeyField:Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    iget-object v4, v4, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->type:Lcom/sleepycat/asm/Type;

    .line 603
    invoke-virtual {v4}, Lcom/sleepycat/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    .line 602
    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/sleepycat/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const/16 v1, 0xb9

    .line 605
    const-string v2, "registerPriKeyObject"

    const-string v3, "(Ljava/lang/Object;)V"

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    return-void
.end method

.method private genRegisterPrimaryStringKey(Lcom/sleepycat/asm/MethodVisitor;)V
    .locals 5
    .param p1, "mv"    # Lcom/sleepycat/asm/MethodVisitor;

    .line 613
    const-string v0, "com/sleepycat/persist/impl/EntityInput"

    .line 615
    .local v0, "entityInputOrOutputClass":Ljava/lang/String;
    const/16 v1, 0x19

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 616
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 617
    iget-object v1, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->className:Ljava/lang/String;

    iget-object v2, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->priKeyField:Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    iget-object v2, v2, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->priKeyField:Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    iget-object v3, v3, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->type:Lcom/sleepycat/asm/Type;

    .line 619
    invoke-virtual {v3}, Lcom/sleepycat/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    .line 618
    const/16 v4, 0xb4

    invoke-virtual {p1, v4, v1, v2, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    nop

    .line 621
    const/16 v1, 0xb9

    const-string v2, "registerPriStringKeyObject"

    const-string v3, "(Ljava/lang/Object;)V"

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    return-void
.end method

.method private genSetFieldSwitch(Lcom/sleepycat/asm/MethodVisitor;Ljava/util/List;Lcom/sleepycat/asm/Label;)V
    .locals 10
    .param p1, "mv"    # Lcom/sleepycat/asm/MethodVisitor;
    .param p3, "defaultLabel"    # Lcom/sleepycat/asm/Label;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/asm/MethodVisitor;",
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;",
            ">;",
            "Lcom/sleepycat/asm/Label;",
            ")V"
        }
    .end annotation

    .line 1318
    .local p2, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 1319
    .local v0, "nFields":I
    if-nez v0, :cond_0

    .line 1320
    const/16 v1, 0xa7

    invoke-virtual {p1, v1, p3}, Lcom/sleepycat/asm/MethodVisitor;->visitJumpInsn(ILcom/sleepycat/asm/Label;)V

    .line 1321
    return-void

    .line 1323
    :cond_0
    new-array v1, v0, [Lcom/sleepycat/asm/Label;

    .line 1324
    .local v1, "labels":[Lcom/sleepycat/asm/Label;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1325
    new-instance v3, Lcom/sleepycat/asm/Label;

    invoke-direct {v3}, Lcom/sleepycat/asm/Label;-><init>()V

    aput-object v3, v1, v2

    .line 1324
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1327
    .end local v2    # "i":I
    :cond_1
    const/16 v2, 0x15

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1328
    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2, p3, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitTableSwitchInsn(IILcom/sleepycat/asm/Label;[Lcom/sleepycat/asm/Label;)V

    .line 1329
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 1330
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    .line 1331
    .local v4, "field":Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;
    aget-object v5, v1, v2

    invoke-virtual {p1, v5}, Lcom/sleepycat/asm/MethodVisitor;->visitLabel(Lcom/sleepycat/asm/Label;)V

    .line 1332
    const/16 v5, 0x19

    invoke-virtual {p1, v5, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1333
    const/4 v6, 0x5

    invoke-virtual {p1, v5, v6}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1334
    iget-object v5, v4, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->type:Lcom/sleepycat/asm/Type;

    invoke-static {v5}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->isRefType(Lcom/sleepycat/asm/Type;)Z

    move-result v5

    const/16 v6, 0xc0

    if-eqz v5, :cond_2

    .line 1335
    iget-object v5, v4, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->type:Lcom/sleepycat/asm/Type;

    invoke-static {v5}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->getTypeInstName(Lcom/sleepycat/asm/Type;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v6, v5}, Lcom/sleepycat/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    goto :goto_2

    .line 1337
    :cond_2
    iget-object v5, v4, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->type:Lcom/sleepycat/asm/Type;

    invoke-virtual {v5}, Lcom/sleepycat/asm/Type;->getSort()I

    move-result v5

    .line 1338
    .local v5, "sort":I
    nop

    .line 1340
    invoke-static {v5}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->getPrimitiveWrapperClass(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2e

    const/16 v9, 0x2f

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    .line 1339
    invoke-virtual {p1, v6, v7}, Lcom/sleepycat/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 1341
    invoke-direct {p0, p1, v5}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genUnwrapPrimitive(Lcom/sleepycat/asm/MethodVisitor;I)V

    .line 1343
    .end local v5    # "sort":I
    :goto_2
    const/16 v5, 0xb5

    iget-object v6, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->className:Ljava/lang/String;

    iget-object v7, v4, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->name:Ljava/lang/String;

    iget-object v8, v4, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->type:Lcom/sleepycat/asm/Type;

    .line 1344
    invoke-virtual {v8}, Lcom/sleepycat/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v5, v6, v7, v8}, Lcom/sleepycat/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    const/16 v5, 0xb1

    invoke-virtual {p1, v5}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 1329
    .end local v4    # "field":Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1347
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method private genStaticBlock()V
    .locals 6

    .line 301
    iget-object v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->cv:Lcom/sleepycat/asm/ClassVisitor;

    .line 302
    const/16 v1, 0x8

    const-string v2, "<clinit>"

    const-string v3, "()V"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/sleepycat/asm/MethodVisitor;

    move-result-object v0

    .line 303
    .local v0, "mv":Lcom/sleepycat/asm/MethodVisitor;
    invoke-virtual {v0}, Lcom/sleepycat/asm/MethodVisitor;->visitCode()V

    .line 304
    iget-object v1, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->staticBlockMethod:Ljava/lang/String;

    const-string v2, "()V"

    const/16 v3, 0xb8

    if-eqz v1, :cond_0

    .line 305
    iget-object v4, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->className:Ljava/lang/String;

    .line 306
    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->className:Ljava/lang/String;

    const/16 v4, 0x2f

    const/16 v5, 0x2e

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 309
    iget-boolean v1, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->isAbstract:Z

    if-eqz v1, :cond_1

    .line 310
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_0

    .line 312
    :cond_1
    const/16 v1, 0xbb

    iget-object v4, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->className:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/sleepycat/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 313
    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 314
    const/16 v1, 0xb7

    iget-object v4, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->className:Ljava/lang/String;

    const-string v5, "<init>"

    invoke-virtual {v0, v1, v4, v5, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :goto_0
    nop

    .line 317
    const-string v1, "com/sleepycat/persist/impl/EnhancedAccessor"

    const-string v2, "registerClass"

    const-string v4, "(Ljava/lang/String;Lcom/sleepycat/persist/impl/Enhanced;)V"

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const/16 v1, 0xb1

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 321
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitMaxs(II)V

    .line 322
    invoke-virtual {v0}, Lcom/sleepycat/asm/MethodVisitor;->visitEnd()V

    .line 323
    return-void
.end method

.method private genUnwrapPrimitive(Lcom/sleepycat/asm/MethodVisitor;I)V
    .locals 4
    .param p1, "mv"    # Lcom/sleepycat/asm/MethodVisitor;
    .param p2, "sort"    # I

    .line 1495
    const/16 v0, 0xb6

    packed-switch p2, :pswitch_data_0

    .line 1529
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1525
    :pswitch_0
    nop

    .line 1526
    const-string v1, "java/lang/Double"

    const-string v2, "doubleValue"

    const-string v3, "()D"

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    goto :goto_0

    .line 1517
    :pswitch_1
    nop

    .line 1518
    const-string v1, "java/lang/Long"

    const-string v2, "longValue"

    const-string v3, "()J"

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    goto :goto_0

    .line 1521
    :pswitch_2
    nop

    .line 1522
    const-string v1, "java/lang/Float"

    const-string v2, "floatValue"

    const-string v3, "()F"

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    goto :goto_0

    .line 1513
    :pswitch_3
    nop

    .line 1514
    const-string v1, "java/lang/Integer"

    const-string v2, "intValue"

    const-string v3, "()I"

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    goto :goto_0

    .line 1509
    :pswitch_4
    nop

    .line 1510
    const-string v1, "java/lang/Short"

    const-string v2, "shortValue"

    const-string v3, "()S"

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    goto :goto_0

    .line 1505
    :pswitch_5
    nop

    .line 1506
    const-string v1, "java/lang/Byte"

    const-string v2, "byteValue"

    const-string v3, "()B"

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
    goto :goto_0

    .line 1501
    :pswitch_6
    nop

    .line 1502
    const-string v1, "java/lang/Character"

    const-string v2, "charValue"

    const-string v3, "()C"

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    goto :goto_0

    .line 1497
    :pswitch_7
    nop

    .line 1498
    const-string v1, "java/lang/Boolean"

    const-string v2, "booleanValue"

    const-string v3, "()Z"

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    nop

    .line 1531
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private genWrapPrimitive(Lcom/sleepycat/asm/MethodVisitor;I)V
    .locals 4
    .param p1, "mv"    # Lcom/sleepycat/asm/MethodVisitor;
    .param p2, "sort"    # I

    .line 1448
    const-string v0, "valueOf"

    const/16 v1, 0xb8

    packed-switch p2, :pswitch_data_0

    .line 1490
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1485
    :pswitch_0
    nop

    .line 1486
    const-string v2, "java/lang/Double"

    const-string v3, "(D)Ljava/lang/Double;"

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    goto :goto_0

    .line 1475
    :pswitch_1
    nop

    .line 1476
    const-string v2, "java/lang/Long"

    const-string v3, "(J)Ljava/lang/Long;"

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    goto :goto_0

    .line 1480
    :pswitch_2
    nop

    .line 1481
    const-string v2, "java/lang/Float"

    const-string v3, "(F)Ljava/lang/Float;"

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    goto :goto_0

    .line 1470
    :pswitch_3
    nop

    .line 1471
    const-string v2, "java/lang/Integer"

    const-string v3, "(I)Ljava/lang/Integer;"

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    goto :goto_0

    .line 1465
    :pswitch_4
    nop

    .line 1466
    const-string v2, "java/lang/Short"

    const-string v3, "(S)Ljava/lang/Short;"

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    goto :goto_0

    .line 1460
    :pswitch_5
    nop

    .line 1461
    const-string v2, "java/lang/Byte"

    const-string v3, "(B)Ljava/lang/Byte;"

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    goto :goto_0

    .line 1455
    :pswitch_6
    nop

    .line 1456
    const-string v2, "java/lang/Character"

    const-string v3, "(C)Ljava/lang/Character;"

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    goto :goto_0

    .line 1450
    :pswitch_7
    nop

    .line 1451
    const-string v2, "java/lang/Boolean"

    const-string v3, "(Z)Ljava/lang/Boolean;"

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    nop

    .line 1492
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private genWriteField(Lcom/sleepycat/asm/MethodVisitor;Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;)V
    .locals 5
    .param p1, "mv"    # Lcom/sleepycat/asm/MethodVisitor;
    .param p2, "field"    # Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    .line 773
    const/16 v0, 0x19

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 774
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 775
    iget-object v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->className:Ljava/lang/String;

    iget-object v2, p2, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->name:Ljava/lang/String;

    iget-object v3, p2, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->type:Lcom/sleepycat/asm/Type;

    .line 776
    invoke-virtual {v3}, Lcom/sleepycat/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xb4

    invoke-virtual {p1, v4, v0, v2, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    iget-object v0, p2, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->type:Lcom/sleepycat/asm/Type;

    invoke-virtual {v0}, Lcom/sleepycat/asm/Type;->getSort()I

    move-result v0

    .line 778
    .local v0, "sort":I
    iget-boolean v2, p2, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->isString:Z

    const-string v3, "com/sleepycat/persist/impl/EntityOutput"

    const/16 v4, 0xb9

    if-eqz v2, :cond_0

    .line 784
    nop

    .line 785
    const-string v1, "writeString"

    const-string v2, "(Ljava/lang/String;)Lcom/sleepycat/bind/tuple/TupleOutput;"

    invoke-virtual {p1, v4, v3, v1, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    const/16 v1, 0x57

    invoke-virtual {p1, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_1

    .line 789
    :cond_0
    const/16 v2, 0xa

    if-eq v0, v2, :cond_2

    const/16 v2, 0x9

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 796
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genWritePrimitive(Lcom/sleepycat/asm/MethodVisitor;I)V

    goto :goto_1

    .line 790
    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 791
    nop

    .line 792
    const-string v1, "writeObject"

    const-string v2, "(Ljava/lang/Object;Lcom/sleepycat/persist/impl/Format;)V"

    invoke-virtual {p1, v4, v3, v1, v2}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    :goto_1
    return-void
.end method

.method private genWritePrimitive(Lcom/sleepycat/asm/MethodVisitor;I)V
    .locals 4
    .param p1, "mv"    # Lcom/sleepycat/asm/MethodVisitor;
    .param p2, "sort"    # I

    .line 1350
    const-string v0, "(I)Lcom/sleepycat/bind/tuple/TupleOutput;"

    const-string v1, "com/sleepycat/persist/impl/EntityOutput"

    const/16 v2, 0xb9

    packed-switch p2, :pswitch_data_0

    .line 1394
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1388
    :pswitch_0
    nop

    .line 1389
    const-string v0, "writeSortedDouble"

    const-string v3, "(D)Lcom/sleepycat/bind/tuple/TupleOutput;"

    invoke-virtual {p1, v2, v1, v0, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    goto :goto_0

    .line 1377
    :pswitch_1
    nop

    .line 1378
    const-string v0, "writeLong"

    const-string v3, "(J)Lcom/sleepycat/bind/tuple/TupleOutput;"

    invoke-virtual {p1, v2, v1, v0, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    goto :goto_0

    .line 1382
    :pswitch_2
    nop

    .line 1383
    const-string v0, "writeSortedFloat"

    const-string v3, "(F)Lcom/sleepycat/bind/tuple/TupleOutput;"

    invoke-virtual {p1, v2, v1, v0, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    goto :goto_0

    .line 1372
    :pswitch_3
    nop

    .line 1373
    const-string v3, "writeInt"

    invoke-virtual {p1, v2, v1, v3, v0}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    goto :goto_0

    .line 1367
    :pswitch_4
    nop

    .line 1368
    const-string v3, "writeShort"

    invoke-virtual {p1, v2, v1, v3, v0}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    goto :goto_0

    .line 1362
    :pswitch_5
    nop

    .line 1363
    const-string v3, "writeByte"

    invoke-virtual {p1, v2, v1, v3, v0}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    goto :goto_0

    .line 1357
    :pswitch_6
    nop

    .line 1358
    const-string v3, "writeChar"

    invoke-virtual {p1, v2, v1, v3, v0}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    goto :goto_0

    .line 1352
    :pswitch_7
    nop

    .line 1353
    const-string v0, "writeBoolean"

    const-string v3, "(Z)Lcom/sleepycat/bind/tuple/TupleOutput;"

    invoke-virtual {p1, v2, v1, v0, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    nop

    .line 1397
    :goto_0
    const/16 v0, 0x57

    invoke-virtual {p1, v0}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 1398
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private genWritePrimitiveField(Lcom/sleepycat/asm/MethodVisitor;Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;)Z
    .locals 6
    .param p1, "mv"    # Lcom/sleepycat/asm/MethodVisitor;
    .param p2, "field"    # Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    .line 854
    iget-object v0, p2, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->type:Lcom/sleepycat/asm/Type;

    invoke-virtual {v0}, Lcom/sleepycat/asm/Type;->getSort()I

    move-result v0

    .line 855
    .local v0, "sort":I
    const/4 v1, 0x0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 858
    :cond_0
    const/16 v2, 0x19

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 859
    invoke-virtual {p1, v2, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 860
    const/16 v1, 0xb4

    iget-object v2, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->className:Ljava/lang/String;

    iget-object v4, p2, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->name:Ljava/lang/String;

    iget-object v5, p2, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->type:Lcom/sleepycat/asm/Type;

    .line 861
    invoke-virtual {v5}, Lcom/sleepycat/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v1, v2, v4, v5}, Lcom/sleepycat/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    invoke-direct {p0, p1, v0}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genWritePrimitive(Lcom/sleepycat/asm/MethodVisitor;I)V

    .line 863
    return v3

    .line 856
    :cond_1
    :goto_0
    return v1
.end method

.method private genWriteSimpleKeyField(Lcom/sleepycat/asm/MethodVisitor;Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;)Z
    .locals 8
    .param p1, "mv"    # Lcom/sleepycat/asm/MethodVisitor;
    .param p2, "field"    # Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    .line 810
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genWritePrimitiveField(Lcom/sleepycat/asm/MethodVisitor;Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 811
    return v1

    .line 813
    :cond_0
    iget-object v0, p2, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->type:Lcom/sleepycat/asm/Type;

    invoke-virtual {v0}, Lcom/sleepycat/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 814
    .local v0, "fieldClassName":Ljava/lang/String;
    invoke-static {v0}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->isSimpleRefType(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 815
    return v3

    .line 817
    :cond_1
    const/16 v2, 0x19

    invoke-virtual {p1, v2, v1}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 818
    invoke-virtual {p1, v2, v3}, Lcom/sleepycat/asm/MethodVisitor;->visitVarInsn(II)V

    .line 819
    const/16 v2, 0xb4

    iget-object v3, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->className:Ljava/lang/String;

    iget-object v4, p2, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->name:Ljava/lang/String;

    iget-object v5, p2, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->type:Lcom/sleepycat/asm/Type;

    .line 820
    invoke-virtual {v5}, Lcom/sleepycat/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/sleepycat/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    sget-object v2, Lcom/sleepycat/persist/model/BytecodeEnhancer;->PRIMITIVE_WRAPPERS:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 822
    .local v2, "sort":Ljava/lang/Integer;
    if-eqz v2, :cond_2

    .line 823
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genUnwrapPrimitive(Lcom/sleepycat/asm/MethodVisitor;I)V

    .line 824
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genWritePrimitive(Lcom/sleepycat/asm/MethodVisitor;I)V

    goto :goto_0

    .line 825
    :cond_2
    const-class v3, Ljava/util/Date;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 826
    const/16 v3, 0xb6

    .line 827
    const-string v4, "java/util/Date"

    const-string v5, "getTime"

    const-string v6, "()J"

    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    const/4 v3, 0x7

    invoke-direct {p0, p1, v3}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genWritePrimitive(Lcom/sleepycat/asm/MethodVisitor;I)V

    goto :goto_0

    .line 829
    :cond_3
    const-class v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x57

    const-string v5, "com/sleepycat/persist/impl/EntityOutput"

    const/16 v6, 0xb9

    if-eqz v3, :cond_4

    .line 830
    nop

    .line 831
    const-string v3, "writeString"

    const-string v7, "(Ljava/lang/String;)Lcom/sleepycat/bind/tuple/TupleOutput;"

    invoke-virtual {p1, v6, v5, v3, v7}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    invoke-virtual {p1, v4}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_0

    .line 835
    :cond_4
    const-class v3, Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 836
    nop

    .line 837
    const-string v3, "writeBigInteger"

    const-string v7, "(Ljava/math/BigInteger;)Lcom/sleepycat/bind/tuple/TupleOutput;"

    invoke-virtual {p1, v6, v5, v3, v7}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    invoke-virtual {p1, v4}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_0

    .line 841
    :cond_5
    const-class v3, Ljava/math/BigDecimal;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 842
    nop

    .line 843
    const-string v3, "writeSortedBigDecimal"

    const-string v7, "(Ljava/math/BigDecimal;)Lcom/sleepycat/bind/tuple/TupleOutput;"

    invoke-virtual {p1, v6, v5, v3, v7}, Lcom/sleepycat/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    invoke-virtual {p1, v4}, Lcom/sleepycat/asm/MethodVisitor;->visitInsn(I)V

    .line 850
    :goto_0
    return v1

    .line 848
    :cond_6
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method static getPrimitiveWrapperClass(I)Ljava/lang/String;
    .locals 3
    .param p0, "primitiveSort"    # I

    .line 1587
    sget-object v0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->PRIMITIVE_WRAPPERS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1588
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 1589
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1591
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    goto :goto_0

    .line 1592
    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static getTypeInstName(Lcom/sleepycat/asm/Type;)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # Lcom/sleepycat/asm/Type;

    .line 1539
    invoke-virtual {p0}, Lcom/sleepycat/asm/Type;->getSort()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 1540
    invoke-virtual {p0}, Lcom/sleepycat/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1541
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/asm/Type;->getSort()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 1542
    invoke-virtual {p0}, Lcom/sleepycat/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1544
    :cond_1
    invoke-static {}, Lcom/sleepycat/compat/DbCompat;->unexpectedState()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static isRefType(Lcom/sleepycat/asm/Type;)Z
    .locals 2
    .param p0, "type"    # Lcom/sleepycat/asm/Type;

    .line 1599
    invoke-virtual {p0}, Lcom/sleepycat/asm/Type;->getSort()I

    move-result v0

    .line 1600
    .local v0, "sort":I
    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method static isSimpleRefType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "className"    # Ljava/lang/String;

    .line 1575
    sget-object v0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->PRIMITIVE_WRAPPERS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/math/BigInteger;

    .line 1576
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/math/BigDecimal;

    .line 1577
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/util/Date;

    .line 1578
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/String;

    .line 1579
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1575
    :goto_1
    return v0
.end method

.method private sortFields()V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->nonKeyFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 245
    return-void

    .line 247
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->isCompositeKey:Z

    .line 248
    iget-object v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->nonKeyFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    .line 249
    .local v1, "field":Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;
    iget-object v2, v1, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->order:Lcom/sleepycat/persist/model/BytecodeEnhancer$OrderInfo;

    if-nez v2, :cond_1

    .line 250
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->isCompositeKey:Z

    .line 252
    .end local v1    # "field":Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;
    :cond_1
    goto :goto_0

    .line 253
    :cond_2
    iget-boolean v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->isCompositeKey:Z

    if-eqz v0, :cond_3

    .line 254
    iget-object v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->nonKeyFields:Ljava/util/List;

    new-instance v1, Lcom/sleepycat/persist/model/BytecodeEnhancer$1;

    invoke-direct {v1, p0}, Lcom/sleepycat/persist/model/BytecodeEnhancer$1;-><init>(Lcom/sleepycat/persist/model/BytecodeEnhancer;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_3

    .line 260
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->nonKeyFields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 261
    iget-object v1, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->nonKeyFields:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    .line 262
    .restart local v1    # "field":Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;
    iget-boolean v2, v1, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->isTransient:Z

    if-eqz v2, :cond_4

    .line 263
    iget-object v2, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->nonKeyFields:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 264
    :cond_4
    iget-boolean v2, v1, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->isPriKey:Z

    if-eqz v2, :cond_5

    .line 265
    iget-object v2, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->priKeyField:Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    if-nez v2, :cond_7

    .line 266
    iput-object v1, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->priKeyField:Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    .line 267
    iget-object v2, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->nonKeyFields:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 269
    :cond_5
    iget-boolean v2, v1, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->isSecKey:Z

    if-eqz v2, :cond_6

    .line 270
    iget-object v2, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->secKeyFields:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object v2, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->nonKeyFields:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 273
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 275
    .end local v1    # "field":Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;
    :cond_7
    :goto_2
    goto :goto_1

    .line 276
    .end local v0    # "i":I
    :cond_8
    new-instance v0, Lcom/sleepycat/persist/model/BytecodeEnhancer$2;

    invoke-direct {v0, p0}, Lcom/sleepycat/persist/model/BytecodeEnhancer$2;-><init>(Lcom/sleepycat/persist/model/BytecodeEnhancer;)V

    .line 281
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;>;"
    iget-object v1, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->secKeyFields:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 282
    iget-object v1, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->nonKeyFields:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 289
    .end local v0    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;>;"
    :goto_3
    return-void
.end method


# virtual methods
.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 13
    .param p1, "version"    # I
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "sig"    # Ljava/lang/String;
    .param p5, "superName"    # Ljava/lang/String;
    .param p6, "interfaces"    # [Ljava/lang/String;

    .line 145
    move-object v7, p0

    move-object/from16 v8, p5

    move-object/from16 v0, p6

    move-object/from16 v9, p3

    iput-object v9, v7, Lcom/sleepycat/persist/model/BytecodeEnhancer;->className:Ljava/lang/String;

    .line 146
    iput-object v8, v7, Lcom/sleepycat/persist/model/BytecodeEnhancer;->superclassName:Ljava/lang/String;

    .line 147
    const-string v10, "com/sleepycat/persist/impl/Enhanced"

    .line 148
    .local v10, "ENHANCED":Ljava/lang/String;
    const-string v1, "com/sleepycat/persist/impl/Enhanced"

    invoke-static {v0, v1}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->containsString([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 151
    invoke-static {v0, v1}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->appendString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 152
    .end local p6    # "interfaces":[Ljava/lang/String;
    .local v11, "interfaces":[Ljava/lang/String;
    move v12, p2

    and-int/lit16 v0, v12, 0x400

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, v7, Lcom/sleepycat/persist/model/BytecodeEnhancer;->isAbstract:Z

    .line 153
    if-eqz v8, :cond_1

    .line 154
    const-string v0, "java/lang/Object"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, v7, Lcom/sleepycat/persist/model/BytecodeEnhancer;->hasPersistentSuperclass:Z

    .line 155
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v11

    invoke-super/range {v0 .. v6}, Lcom/sleepycat/asm/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 156
    return-void

    .line 149
    .end local v11    # "interfaces":[Ljava/lang/String;
    .restart local p6    # "interfaces":[Ljava/lang/String;
    :cond_2
    move v12, p2

    invoke-direct {p0}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->abort()Lcom/sleepycat/persist/model/BytecodeEnhancer$NotPersistentException;

    move-result-object v1

    throw v1
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 165
    const-string v0, "Lcom/sleepycat/persist/model/Entity;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    const-string v0, "Lcom/sleepycat/persist/model/Persistent;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->isPersistent:Z

    .line 169
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sleepycat/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitEnd()V
    .locals 1

    .line 217
    iget-boolean v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->isPersistent:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->hasDefaultConstructor:Z

    if-eqz v0, :cond_0

    .line 221
    invoke-direct {p0}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->sortFields()V

    .line 222
    invoke-direct {p0}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genBdbNewInstance()V

    .line 223
    invoke-direct {p0}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genBdbNewArray()V

    .line 224
    invoke-direct {p0}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genBdbIsPriKeyFieldNullOrZero()V

    .line 225
    invoke-direct {p0}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genBdbWritePriKeyField()V

    .line 226
    invoke-direct {p0}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genBdbReadPriKeyField()V

    .line 227
    invoke-direct {p0}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genBdbWriteSecKeyFields()V

    .line 228
    invoke-direct {p0}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genBdbReadSecKeyFields()V

    .line 229
    invoke-direct {p0}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genBdbWriteNonKeyFields()V

    .line 230
    invoke-direct {p0}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genBdbReadNonKeyFields()V

    .line 231
    invoke-direct {p0}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genBdbWriteCompositeKeyFields()V

    .line 232
    invoke-direct {p0}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genBdbReadCompositeKeyFields()V

    .line 233
    invoke-direct {p0}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genBdbGetField()V

    .line 234
    invoke-direct {p0}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genBdbSetField()V

    .line 235
    invoke-direct {p0}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genBdbSetPriField()V

    .line 236
    invoke-direct {p0}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->genStaticBlock()V

    .line 237
    invoke-super {p0}, Lcom/sleepycat/asm/ClassVisitor;->visitEnd()V

    .line 238
    return-void

    .line 218
    :cond_0
    invoke-direct {p0}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->abort()Lcom/sleepycat/persist/model/BytecodeEnhancer$NotPersistentException;

    move-result-object v0

    throw v0
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/sleepycat/asm/FieldVisitor;
    .locals 3
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "sig"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/Object;

    .line 178
    iget-boolean v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->isPersistent:Z

    if-eqz v0, :cond_2

    .line 181
    invoke-super/range {p0 .. p5}, Lcom/sleepycat/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/sleepycat/asm/FieldVisitor;

    move-result-object v0

    .line 182
    .local v0, "ret":Lcom/sleepycat/asm/FieldVisitor;
    and-int/lit8 v1, p1, 0x8

    if-nez v1, :cond_1

    .line 183
    new-instance v1, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    and-int/lit16 v2, p1, 0x80

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v1, v0, p2, p3, v2}, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;-><init>(Lcom/sleepycat/asm/FieldVisitor;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 185
    .local v1, "info":Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;
    iget-object v2, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->nonKeyFields:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    move-object v0, v1

    .line 188
    .end local v1    # "info":Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;
    :cond_1
    return-object v0

    .line 179
    .end local v0    # "ret":Lcom/sleepycat/asm/FieldVisitor;
    :cond_2
    invoke-direct {p0}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->abort()Lcom/sleepycat/persist/model/BytecodeEnhancer$NotPersistentException;

    move-result-object v0

    throw v0
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/sleepycat/asm/MethodVisitor;
    .locals 7
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "sig"    # Ljava/lang/String;
    .param p5, "exceptions"    # [Ljava/lang/String;

    .line 197
    iget-boolean v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->isPersistent:Z

    if-eqz v0, :cond_3

    .line 200
    const-string v0, "<init>"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "()V"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->hasDefaultConstructor:Z

    .line 203
    :cond_0
    const-string v0, "<clinit>"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->staticBlockMethod:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 207
    const-string v0, "bdbExistingStaticBlock"

    iput-object v0, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->staticBlockMethod:Ljava/lang/String;

    .line 208
    iget-object v1, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->cv:Lcom/sleepycat/asm/ClassVisitor;

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer;->staticBlockMethod:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 209
    const-string v4, "()V"

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/sleepycat/asm/MethodVisitor;

    move-result-object v0

    .line 208
    return-object v0

    .line 205
    :cond_1
    invoke-static {}, Lcom/sleepycat/compat/DbCompat;->unexpectedState()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 212
    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/sleepycat/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/sleepycat/asm/MethodVisitor;

    move-result-object v0

    return-object v0

    .line 198
    :cond_3
    invoke-direct {p0}, Lcom/sleepycat/persist/model/BytecodeEnhancer;->abort()Lcom/sleepycat/persist/model/BytecodeEnhancer$NotPersistentException;

    move-result-object v0

    throw v0
.end method

.method public visitSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "debug"    # Ljava/lang/String;

    .line 160
    invoke-super {p0, p1, p2}, Lcom/sleepycat/asm/ClassVisitor;->visitSource(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

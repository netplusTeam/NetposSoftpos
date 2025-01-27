.class abstract Lorg/apache/commons/lang/reflect/MemberUtils;
.super Ljava/lang/Object;
.source "MemberUtils.java"


# static fields
.field private static final ACCESS_TEST:I = 0x7

.field private static final IS_SYNTHETIC:Ljava/lang/reflect/Method;

.field private static final ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;

.field static synthetic class$java$lang$reflect$Member:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "isSynthetic":Ljava/lang/reflect/Method;
    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v1}, Lorg/apache/commons/lang/SystemUtils;->isJavaVersionAtLeast(F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    :try_start_0
    sget-object v1, Lorg/apache/commons/lang/reflect/MemberUtils;->class$java$lang$reflect$Member:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "java.lang.reflect.Member"

    invoke-static {v1}, Lorg/apache/commons/lang/reflect/MemberUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/lang/reflect/MemberUtils;->class$java$lang$reflect$Member:Ljava/lang/Class;

    :cond_0
    const-string v2, "isSynthetic"

    sget-object v3, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 53
    goto :goto_0

    .line 52
    :catch_0
    move-exception v1

    .line 55
    :cond_1
    :goto_0
    sput-object v0, Lorg/apache/commons/lang/reflect/MemberUtils;->IS_SYNTHETIC:Ljava/lang/reflect/Method;

    .line 59
    .end local v0    # "isSynthetic":Ljava/lang/reflect/Method;
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/lang/reflect/MemberUtils;->ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .line 50
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static compareParameterTypes([Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;)I
    .locals 3
    .param p0, "left"    # [Ljava/lang/Class;
    .param p1, "right"    # [Ljava/lang/Class;
    .param p2, "actual"    # [Ljava/lang/Class;

    .line 135
    invoke-static {p2, p0}, Lorg/apache/commons/lang/reflect/MemberUtils;->getTotalTransformationCost([Ljava/lang/Class;[Ljava/lang/Class;)F

    move-result v0

    .line 136
    .local v0, "leftCost":F
    invoke-static {p2, p1}, Lorg/apache/commons/lang/reflect/MemberUtils;->getTotalTransformationCost([Ljava/lang/Class;[Ljava/lang/Class;)F

    move-result v1

    .line 137
    .local v1, "rightCost":F
    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    cmpg-float v2, v1, v0

    if-gez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private static getObjectTransformationCost(Ljava/lang/Class;Ljava/lang/Class;)F
    .locals 2
    .param p0, "srcClass"    # Ljava/lang/Class;
    .param p1, "destClass"    # Ljava/lang/Class;

    .line 167
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-static {p0, p1}, Lorg/apache/commons/lang/reflect/MemberUtils;->getPrimitivePromotionCost(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result v0

    return v0

    .line 170
    :cond_0
    const/4 v0, 0x0

    .line 171
    .local v0, "cost":F
    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 172
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0, p1}, Lorg/apache/commons/lang/ClassUtils;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    const/high16 v1, 0x3e800000    # 0.25f

    add-float/2addr v0, v1

    .line 179
    goto :goto_1

    .line 181
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    .line 182
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 188
    :cond_2
    :goto_1
    if-nez p0, :cond_3

    .line 189
    const/high16 v1, 0x3fc00000    # 1.5f

    add-float/2addr v0, v1

    .line 191
    :cond_3
    return v0
.end method

.method private static getPrimitivePromotionCost(Ljava/lang/Class;Ljava/lang/Class;)F
    .locals 6
    .param p0, "srcClass"    # Ljava/lang/Class;
    .param p1, "destClass"    # Ljava/lang/Class;

    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, "cost":F
    move-object v1, p0

    .line 204
    .local v1, "cls":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    const v3, 0x3dcccccd    # 0.1f

    if-nez v2, :cond_0

    .line 206
    add-float/2addr v0, v3

    .line 207
    invoke-static {v1}, Lorg/apache/commons/lang/ClassUtils;->wrapperToPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 209
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-eq v1, p1, :cond_2

    sget-object v4, Lorg/apache/commons/lang/reflect/MemberUtils;->ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;

    array-length v5, v4

    if-ge v2, v5, :cond_2

    .line 210
    aget-object v5, v4, v2

    if-ne v1, v5, :cond_1

    .line 211
    add-float/2addr v0, v3

    .line 212
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_1

    .line 213
    add-int/lit8 v5, v2, 0x1

    aget-object v1, v4, v5

    .line 209
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 217
    .end local v2    # "i":I
    :cond_2
    return v0
.end method

.method private static getTotalTransformationCost([Ljava/lang/Class;[Ljava/lang/Class;)F
    .locals 5
    .param p0, "srcArgs"    # [Ljava/lang/Class;
    .param p1, "destArgs"    # [Ljava/lang/Class;

    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, "totalCost":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 151
    aget-object v2, p0, v1

    .line 152
    .local v2, "srcClass":Ljava/lang/Class;
    aget-object v3, p1, v1

    .line 153
    .local v3, "destClass":Ljava/lang/Class;
    invoke-static {v2, v3}, Lorg/apache/commons/lang/reflect/MemberUtils;->getObjectTransformationCost(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result v4

    add-float/2addr v0, v4

    .line 149
    .end local v2    # "srcClass":Ljava/lang/Class;
    .end local v3    # "destClass":Ljava/lang/Class;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method static isAccessible(Ljava/lang/reflect/Member;)Z
    .locals 1
    .param p0, "m"    # Ljava/lang/reflect/Member;

    .line 104
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/apache/commons/lang/reflect/MemberUtils;->isSynthetic(Ljava/lang/reflect/Member;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isPackageAccess(I)Z
    .locals 1
    .param p0, "modifiers"    # I

    .line 95
    and-int/lit8 v0, p0, 0x7

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isSynthetic(Ljava/lang/reflect/Member;)Z
    .locals 2
    .param p0, "m"    # Ljava/lang/reflect/Member;

    .line 113
    sget-object v0, Lorg/apache/commons/lang/reflect/MemberUtils;->IS_SYNTHETIC:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 115
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 116
    :catch_0
    move-exception v0

    .line 119
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static setAccessibleWorkaround(Ljava/lang/reflect/AccessibleObject;)V
    .locals 2
    .param p0, "o"    # Ljava/lang/reflect/AccessibleObject;

    .line 75
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 78
    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Member;

    .line 79
    .local v0, "m":Ljava/lang/reflect/Member;
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Lorg/apache/commons/lang/reflect/MemberUtils;->isPackageAccess(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    goto :goto_0

    .line 83
    :catch_0
    move-exception v1

    .line 87
    :cond_1
    :goto_0
    return-void

    .line 76
    .end local v0    # "m":Ljava/lang/reflect/Member;
    :cond_2
    :goto_1
    return-void
.end method

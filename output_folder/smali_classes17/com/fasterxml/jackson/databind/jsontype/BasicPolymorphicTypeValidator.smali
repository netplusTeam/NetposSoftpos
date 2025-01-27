.class public Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator;
.super Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Base;
.source "BasicPolymorphicTypeValidator.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$Builder;,
        Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$NameMatcher;,
        Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$TypeMatcher;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _baseTypeMatchers:[Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$TypeMatcher;

.field protected final _invalidBaseTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected final _subClassMatchers:[Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$TypeMatcher;

.field protected final _subTypeNameMatchers:[Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$NameMatcher;


# direct methods
.method protected constructor <init>(Ljava/util/Set;[Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$TypeMatcher;[Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$NameMatcher;[Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$TypeMatcher;)V
    .locals 0
    .param p2, "baseTypeMatchers"    # [Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$TypeMatcher;
    .param p3, "subTypeNameMatchers"    # [Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$NameMatcher;
    .param p4, "subClassMatchers"    # [Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$TypeMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;[",
            "Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$TypeMatcher;",
            "[",
            "Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$NameMatcher;",
            "[",
            "Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$TypeMatcher;",
            ")V"
        }
    .end annotation

    .line 308
    .local p1, "invalidBaseTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Base;-><init>()V

    .line 309
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator;->_invalidBaseTypes:Ljava/util/Set;

    .line 310
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator;->_baseTypeMatchers:[Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$TypeMatcher;

    .line 311
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator;->_subTypeNameMatchers:[Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$NameMatcher;

    .line 312
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator;->_subClassMatchers:[Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$TypeMatcher;

    .line 313
    return-void
.end method

.method public static builder()Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$Builder;
    .locals 1

    .line 316
    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$Builder;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public validateBaseType(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;
    .locals 6
    .param p2, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;"
        }
    .end annotation

    .line 321
    .local p1, "ctxt":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 322
    .local v0, "rawBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator;->_invalidBaseTypes:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 323
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    sget-object v1, Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;->DENIED:Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;

    return-object v1

    .line 327
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator;->_baseTypeMatchers:[Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$TypeMatcher;

    if-eqz v1, :cond_2

    .line 328
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 329
    .local v4, "m":Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$TypeMatcher;
    invoke-virtual {v4, v0}, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$TypeMatcher;->match(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 330
    sget-object v1, Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;->ALLOWED:Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;

    return-object v1

    .line 328
    .end local v4    # "m":Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$TypeMatcher;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 334
    :cond_2
    sget-object v1, Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;->INDETERMINATE:Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;

    return-object v1
.end method

.method public validateSubClassName(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;
    .locals 5
    .param p2, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "subClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/String;",
            ")",
            "Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 342
    .local p1, "ctxt":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator;->_subTypeNameMatchers:[Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$NameMatcher;

    if-eqz v0, :cond_1

    .line 343
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 344
    .local v3, "m":Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$NameMatcher;
    invoke-virtual {v3, p3}, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$NameMatcher;->match(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 345
    sget-object v0, Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;->ALLOWED:Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;

    return-object v0

    .line 343
    .end local v3    # "m":Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$NameMatcher;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 350
    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;->INDETERMINATE:Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;

    return-object v0
.end method

.method public validateSubType(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;
    .locals 6
    .param p2, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "subType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 356
    .local p1, "ctxt":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator;->_subClassMatchers:[Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$TypeMatcher;

    if-eqz v0, :cond_1

    .line 357
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 358
    .local v0, "subClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator;->_subClassMatchers:[Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$TypeMatcher;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 359
    .local v4, "m":Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$TypeMatcher;
    invoke-virtual {v4, v0}, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$TypeMatcher;->match(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 360
    sget-object v1, Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;->ALLOWED:Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;

    return-object v1

    .line 358
    .end local v4    # "m":Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$TypeMatcher;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 365
    .end local v0    # "subClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;->INDETERMINATE:Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;

    return-object v0
.end method

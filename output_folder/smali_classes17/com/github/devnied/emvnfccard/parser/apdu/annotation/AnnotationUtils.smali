.class public final Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationUtils;
.super Ljava/lang/Object;
.source "AnnotationUtils.java"


# static fields
.field private static final INSTANCE:Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationUtils;

.field private static final LISTE_CLASS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lcom/github/devnied/emvnfccard/parser/apdu/IFile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/github/devnied/emvnfccard/iso7816emv/ITag;",
            "Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mapSet:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/github/devnied/emvnfccard/model/EmvTransactionRecord;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/github/devnied/emvnfccard/model/CPLC;

    aput-object v2, v0, v1

    sput-object v0, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationUtils;->LISTE_CLASS:[Ljava/lang/Class;

    .line 46
    new-instance v0, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationUtils;

    invoke-direct {v0}, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationUtils;-><init>()V

    sput-object v0, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationUtils;->INSTANCE:Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationUtils;->map:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationUtils;->mapSet:Ljava/util/Map;

    .line 69
    invoke-direct {p0}, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationUtils;->extractAnnotation()V

    .line 70
    return-void
.end method

.method private extractAnnotation()V
    .locals 14

    .line 76
    sget-object v0, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationUtils;->LISTE_CLASS:[Ljava/lang/Class;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 78
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/github/devnied/emvnfccard/parser/apdu/IFile;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 79
    .local v5, "maps":Ljava/util/Map;, "Ljava/util/Map<Lcom/github/devnied/emvnfccard/iso7816emv/ITag;Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;>;"
    new-instance v6, Ljava/util/TreeSet;

    invoke-direct {v6}, Ljava/util/TreeSet;-><init>()V

    .line 81
    .local v6, "set":Ljava/util/Set;, "Ljava/util/Set<Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;>;"
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    .line 82
    .local v7, "fields":[Ljava/lang/reflect/Field;
    array-length v8, v7

    move v9, v2

    :goto_1
    if-ge v9, v8, :cond_1

    aget-object v10, v7, v9

    .line 83
    .local v10, "field":Ljava/lang/reflect/Field;
    new-instance v11, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;

    invoke-direct {v11}, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;-><init>()V

    .line 84
    .local v11, "param":Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;
    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 85
    invoke-virtual {v11, v10}, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->setField(Ljava/lang/reflect/Field;)V

    .line 86
    const-class v12, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/Data;

    invoke-virtual {v10, v12}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v12

    check-cast v12, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/Data;

    .line 87
    .local v12, "annotation":Lcom/github/devnied/emvnfccard/parser/apdu/annotation/Data;
    if-eqz v12, :cond_0

    .line 88
    invoke-virtual {v11, v12}, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->initFromAnnotation(Lcom/github/devnied/emvnfccard/parser/apdu/annotation/Data;)V

    .line 89
    invoke-virtual {v11}, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->getTag()Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    move-result-object v13

    invoke-interface {v5, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :try_start_0
    invoke-virtual {v11}, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->clone()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;

    invoke-interface {v6, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    goto :goto_2

    .line 92
    :catch_0
    move-exception v13

    .line 82
    .end local v10    # "field":Ljava/lang/reflect/Field;
    .end local v11    # "param":Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;
    .end local v12    # "annotation":Lcom/github/devnied/emvnfccard/parser/apdu/annotation/Data;
    :cond_0
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 97
    :cond_1
    iget-object v8, p0, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationUtils;->mapSet:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v8, p0, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationUtils;->map:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/github/devnied/emvnfccard/parser/apdu/IFile;>;"
    .end local v5    # "maps":Ljava/util/Map;, "Ljava/util/Map<Lcom/github/devnied/emvnfccard/iso7816emv/ITag;Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;>;"
    .end local v6    # "set":Ljava/util/Set;, "Ljava/util/Set<Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;>;"
    .end local v7    # "fields":[Ljava/lang/reflect/Field;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 100
    :cond_2
    return-void
.end method

.method public static getInstance()Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationUtils;
    .locals 1

    .line 54
    sget-object v0, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationUtils;->INSTANCE:Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationUtils;

    return-object v0
.end method


# virtual methods
.method public getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/github/devnied/emvnfccard/iso7816emv/ITag;",
            "Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;",
            ">;>;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationUtils;->map:Ljava/util/Map;

    return-object v0
.end method

.method public getMapSet()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;",
            ">;>;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationUtils;->mapSet:Ljava/util/Map;

    return-object v0
.end method

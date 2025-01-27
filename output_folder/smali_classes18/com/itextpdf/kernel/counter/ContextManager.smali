.class public Lcom/itextpdf/kernel/counter/ContextManager;
.super Ljava/lang/Object;
.source "ContextManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/counter/ContextManager$LengthComparator;
    }
.end annotation


# static fields
.field private static final instance:Lcom/itextpdf/kernel/counter/ContextManager;


# instance fields
.field private final contextMappings:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/kernel/counter/context/IContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lcom/itextpdf/kernel/counter/ContextManager;

    invoke-direct {v0}, Lcom/itextpdf/kernel/counter/ContextManager;-><init>()V

    sput-object v0, Lcom/itextpdf/kernel/counter/ContextManager;->instance:Lcom/itextpdf/kernel/counter/ContextManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 12

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lcom/itextpdf/kernel/counter/ContextManager$LengthComparator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/counter/ContextManager$LengthComparator;-><init>(Lcom/itextpdf/kernel/counter/ContextManager$1;)V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/counter/ContextManager;->contextMappings:Ljava/util/SortedMap;

    .line 66
    const-string v3, "com.itextpdf.io"

    const-string v4, "com.itextpdf.kernel"

    const-string v5, "com.itextpdf.layout"

    const-string v6, "com.itextpdf.barcodes"

    const-string v7, "com.itextpdf.pdfa"

    const-string v8, "com.itextpdf.signatures"

    const-string v9, "com.itextpdf.forms"

    const-string v10, "com.itextpdf.styledxmlparser"

    const-string v11, "com.itextpdf.svg"

    filled-new-array/range {v3 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 75
    const-string v1, "com.itextpdf"

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 66
    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/counter/ContextManager;->registerGenericContext(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 76
    const-string v0, "com.itextpdf.pdfdebug"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 77
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 76
    invoke-direct {p0, v1, v0}, Lcom/itextpdf/kernel/counter/ContextManager;->registerGenericContext(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 78
    const-string v0, "com.itextpdf.html2pdf"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 79
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 78
    invoke-direct {p0, v1, v0}, Lcom/itextpdf/kernel/counter/ContextManager;->registerGenericContext(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 80
    const-string v0, "com.itextpdf.zugferd"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 81
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 80
    invoke-direct {p0, v1, v0}, Lcom/itextpdf/kernel/counter/ContextManager;->registerGenericContext(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 82
    const-string v0, "com.itextpdf.pdfcleanup"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 83
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 82
    invoke-direct {p0, v1, v0}, Lcom/itextpdf/kernel/counter/ContextManager;->registerGenericContext(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 84
    const-string v0, "com.itextpdf.pdfocr.tesseract4"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 85
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 84
    invoke-direct {p0, v1, v0}, Lcom/itextpdf/kernel/counter/ContextManager;->registerGenericContext(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 86
    const-string v0, "com.itextpdf.pdfocr"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/counter/ContextManager;->registerGenericContext(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 87
    return-void
.end method

.method public static getInstance()Lcom/itextpdf/kernel/counter/ContextManager;
    .locals 1

    .line 95
    sget-object v0, Lcom/itextpdf/kernel/counter/ContextManager;->instance:Lcom/itextpdf/kernel/counter/ContextManager;

    return-object v0
.end method

.method private getNamespaceMapping(Ljava/lang/String;)Lcom/itextpdf/kernel/counter/context/IContext;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;

    .line 136
    if-eqz p1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/itextpdf/kernel/counter/ContextManager;->contextMappings:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/counter/context/IContext;

    return-object v0

    .line 139
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private registerContext(Ljava/lang/String;Lcom/itextpdf/kernel/counter/context/IContext;)V
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "context"    # Lcom/itextpdf/kernel/counter/context/IContext;

    .line 151
    iget-object v0, p0, Lcom/itextpdf/kernel/counter/ContextManager;->contextMappings:Ljava/util/SortedMap;

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-void
.end method

.method private registerGenericContext(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 143
    .local p1, "namespaces":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p2, "eventIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Lcom/itextpdf/kernel/counter/context/GenericContext;

    invoke-direct {v0, p2}, Lcom/itextpdf/kernel/counter/context/GenericContext;-><init>(Ljava/util/Collection;)V

    .line 144
    .local v0, "context":Lcom/itextpdf/kernel/counter/context/GenericContext;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 146
    .local v2, "namespace":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/itextpdf/kernel/counter/ContextManager;->registerContext(Ljava/lang/String;Lcom/itextpdf/kernel/counter/context/IContext;)V

    .line 147
    .end local v2    # "namespace":Ljava/lang/String;
    goto :goto_0

    .line 148
    :cond_0
    return-void
.end method


# virtual methods
.method public getContext(Ljava/lang/Class;)Lcom/itextpdf/kernel/counter/context/IContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/itextpdf/kernel/counter/context/IContext;"
        }
    .end annotation

    .line 106
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/counter/ContextManager;->getContext(Ljava/lang/String;)Lcom/itextpdf/kernel/counter/context/IContext;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getContext(Ljava/lang/String;)Lcom/itextpdf/kernel/counter/context/IContext;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .line 117
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/counter/ContextManager;->getRecognisedNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/counter/ContextManager;->getNamespaceMapping(Ljava/lang/String;)Lcom/itextpdf/kernel/counter/context/IContext;

    move-result-object v0

    return-object v0
.end method

.method getRecognisedNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "className"    # Ljava/lang/String;

    .line 121
    if-eqz p1, :cond_1

    .line 125
    iget-object v0, p0, Lcom/itextpdf/kernel/counter/ContextManager;->contextMappings:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 127
    .local v1, "namespace":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    return-object v1

    .line 130
    .end local v1    # "namespace":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 132
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.class Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$Dataset;
.super Ljava/util/AbstractMap;
.source "Attributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Dataset"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$Dataset$DatasetIterator;,
        Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$Dataset$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;


# direct methods
.method private constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)V
    .locals 2

    .line 271
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$Dataset;->this$0:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 272
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->access$100(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)Ljava/util/LinkedHashMap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 273
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-static {p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->access$102(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    .line 274
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;
    .param p2, "x1"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$1;

    .line 269
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$Dataset;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)V

    return-void
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 277
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$Dataset$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$Dataset$EntrySet;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$Dataset;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$1;)V

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 269
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$Dataset;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 281
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->access$300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "dataKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$Dataset;->this$0:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$Dataset;->this$0:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->access$100(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 283
    .local v1, "oldValue":Ljava/lang/String;
    :goto_0
    new-instance v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;

    invoke-direct {v2, v0, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .local v2, "attr":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;
    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$Dataset;->this$0:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-static {v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->access$100(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    return-object v1
.end method

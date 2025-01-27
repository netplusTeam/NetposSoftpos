.class public Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;
.super Ljava/lang/Object;
.source "Entities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EscapeMode"
.end annotation


# static fields
.field public static final base:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;

.field public static final extended:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;

.field private static nameValueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final xhtml:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;


# instance fields
.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 67
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;

    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->access$000()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "xhtml"

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->xhtml:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;

    .line 71
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;

    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->access$100()Ljava/util/Map;

    move-result-object v2

    const-string v3, "base"

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    sput-object v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->base:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;

    .line 75
    new-instance v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;

    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->access$200()Ljava/util/Map;

    move-result-object v3

    const-string v4, "extended"

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    sput-object v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->extended:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;

    .line 77
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->nameValueMap:Ljava/util/Map;

    .line 84
    iget-object v4, v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->name:Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->nameValueMap:Ljava/util/Map;

    iget-object v3, v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->name:Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->nameValueMap:Ljava/util/Map;

    iget-object v1, v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method

.method private constructor <init>(Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 92
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->map:Ljava/util/Map;

    .line 94
    iput-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->name:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 80
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->nameValueMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;

    return-object v0
.end method


# virtual methods
.method public getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->map:Ljava/util/Map;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->name:Ljava/lang/String;

    return-object v0
.end method

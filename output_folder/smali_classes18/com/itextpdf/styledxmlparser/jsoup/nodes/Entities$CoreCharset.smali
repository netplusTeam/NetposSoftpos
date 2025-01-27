.class final enum Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;
.super Ljava/lang/Enum;
.source "Entities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CoreCharset"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;

.field public static final enum ascii:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;

.field public static final enum fallback:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;

.field public static final enum utf:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 278
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;

    const-string v1, "ascii"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;->ascii:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;

    const-string/jumbo v3, "utf"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;->utf:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;

    new-instance v3, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;

    const-string v5, "fallback"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;->fallback:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;

    .line 277
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;->$VALUES:[Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 277
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 277
    const-class v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;

    return-object v0
.end method

.method public static values()[Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;
    .locals 1

    .line 277
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;->$VALUES:[Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;

    invoke-virtual {v0}, [Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;

    return-object v0
.end method

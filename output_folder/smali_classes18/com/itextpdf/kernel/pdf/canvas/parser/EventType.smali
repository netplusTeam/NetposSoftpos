.class public final enum Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;
.super Ljava/lang/Enum;
.source "EventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

.field public static final enum BEGIN_TEXT:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

.field public static final enum CLIP_PATH_CHANGED:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

.field public static final enum END_TEXT:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

.field public static final enum RENDER_IMAGE:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

.field public static final enum RENDER_PATH:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

.field public static final enum RENDER_TEXT:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 50
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    const-string v1, "BEGIN_TEXT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->BEGIN_TEXT:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    .line 51
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    const-string v3, "RENDER_TEXT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->RENDER_TEXT:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    .line 52
    new-instance v3, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    const-string v5, "END_TEXT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->END_TEXT:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    .line 53
    new-instance v5, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    const-string v7, "RENDER_IMAGE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->RENDER_IMAGE:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    .line 54
    new-instance v7, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    const-string v9, "RENDER_PATH"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->RENDER_PATH:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    .line 55
    new-instance v9, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    const-string v11, "CLIP_PATH_CHANGED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->CLIP_PATH_CHANGED:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    .line 49
    const/4 v11, 0x6

    new-array v11, v11, [Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->$VALUES:[Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 49
    const-class v0, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    return-object v0
.end method

.method public static values()[Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;
    .locals 1

    .line 49
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->$VALUES:[Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    invoke-virtual {v0}, [Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    return-object v0
.end method

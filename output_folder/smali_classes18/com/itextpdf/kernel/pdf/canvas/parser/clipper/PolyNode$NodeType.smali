.class final enum Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode$NodeType;
.super Ljava/lang/Enum;
.source "PolyNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "NodeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode$NodeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode$NodeType;

.field public static final enum ANY:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode$NodeType;

.field public static final enum CLOSED:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode$NodeType;

.field public static final enum OPEN:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode$NodeType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 43
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode$NodeType;

    const-string v1, "ANY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode$NodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode$NodeType;->ANY:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode$NodeType;

    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode$NodeType;

    const-string v3, "OPEN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode$NodeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode$NodeType;->OPEN:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode$NodeType;

    new-instance v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode$NodeType;

    const-string v5, "CLOSED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode$NodeType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode$NodeType;->CLOSED:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode$NodeType;

    .line 42
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode$NodeType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode$NodeType;->$VALUES:[Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode$NodeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode$NodeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 42
    const-class v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode$NodeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode$NodeType;

    return-object v0
.end method

.method public static values()[Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode$NodeType;
    .locals 1

    .line 42
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode$NodeType;->$VALUES:[Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode$NodeType;

    invoke-virtual {v0}, [Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode$NodeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode$NodeType;

    return-object v0
.end method

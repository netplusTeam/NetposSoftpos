.class public final enum Lcom/github/barteksc/pdfviewer/util/SnapEdge;
.super Ljava/lang/Enum;
.source "SnapEdge.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/barteksc/pdfviewer/util/SnapEdge;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/barteksc/pdfviewer/util/SnapEdge;

.field public static final enum CENTER:Lcom/github/barteksc/pdfviewer/util/SnapEdge;

.field public static final enum END:Lcom/github/barteksc/pdfviewer/util/SnapEdge;

.field public static final enum NONE:Lcom/github/barteksc/pdfviewer/util/SnapEdge;

.field public static final enum START:Lcom/github/barteksc/pdfviewer/util/SnapEdge;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 19
    new-instance v0, Lcom/github/barteksc/pdfviewer/util/SnapEdge;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/barteksc/pdfviewer/util/SnapEdge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/barteksc/pdfviewer/util/SnapEdge;->START:Lcom/github/barteksc/pdfviewer/util/SnapEdge;

    new-instance v1, Lcom/github/barteksc/pdfviewer/util/SnapEdge;

    const-string v3, "CENTER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/github/barteksc/pdfviewer/util/SnapEdge;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/github/barteksc/pdfviewer/util/SnapEdge;->CENTER:Lcom/github/barteksc/pdfviewer/util/SnapEdge;

    new-instance v3, Lcom/github/barteksc/pdfviewer/util/SnapEdge;

    const-string v5, "END"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/github/barteksc/pdfviewer/util/SnapEdge;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/github/barteksc/pdfviewer/util/SnapEdge;->END:Lcom/github/barteksc/pdfviewer/util/SnapEdge;

    new-instance v5, Lcom/github/barteksc/pdfviewer/util/SnapEdge;

    const-string v7, "NONE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/github/barteksc/pdfviewer/util/SnapEdge;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/github/barteksc/pdfviewer/util/SnapEdge;->NONE:Lcom/github/barteksc/pdfviewer/util/SnapEdge;

    .line 18
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/github/barteksc/pdfviewer/util/SnapEdge;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/github/barteksc/pdfviewer/util/SnapEdge;->$VALUES:[Lcom/github/barteksc/pdfviewer/util/SnapEdge;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/barteksc/pdfviewer/util/SnapEdge;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 18
    const-class v0, Lcom/github/barteksc/pdfviewer/util/SnapEdge;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/barteksc/pdfviewer/util/SnapEdge;

    return-object v0
.end method

.method public static values()[Lcom/github/barteksc/pdfviewer/util/SnapEdge;
    .locals 1

    .line 18
    sget-object v0, Lcom/github/barteksc/pdfviewer/util/SnapEdge;->$VALUES:[Lcom/github/barteksc/pdfviewer/util/SnapEdge;

    invoke-virtual {v0}, [Lcom/github/barteksc/pdfviewer/util/SnapEdge;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/barteksc/pdfviewer/util/SnapEdge;

    return-object v0
.end method

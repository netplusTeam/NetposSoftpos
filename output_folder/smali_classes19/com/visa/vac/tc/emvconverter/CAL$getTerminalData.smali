.class final Lcom/visa/vac/tc/emvconverter/CAL$getTerminalData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visa/vac/tc/emvconverter/CAL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "getTerminalData"
.end annotation


# instance fields
.field $$a:[B

.field BuildConfig:[B

.field ContactlessConfiguration:[B

.field clear:Ljava/lang/String;

.field getInstance:B

.field getTerminalData:B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>([B[BBB[BI)V
    .locals 0

    .line 627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 628
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/CAL$getTerminalData;->BuildConfig:[B

    .line 629
    iput-object p2, p0, Lcom/visa/vac/tc/emvconverter/CAL$getTerminalData;->ContactlessConfiguration:[B

    .line 632
    iput-byte p3, p0, Lcom/visa/vac/tc/emvconverter/CAL$getTerminalData;->getTerminalData:B

    .line 633
    iput-byte p4, p0, Lcom/visa/vac/tc/emvconverter/CAL$getTerminalData;->getInstance:B

    .line 634
    iput-object p5, p0, Lcom/visa/vac/tc/emvconverter/CAL$getTerminalData;->$$a:[B

    .line 635
    sget-object p1, Lcom/visa/vac/tc/emvconverter/CAL;->ContactlessConfiguration:Ljava/util/List;

    invoke-interface {p1, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/Utils;->getHexString([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/CAL$getTerminalData;->clear:Ljava/lang/String;

    .line 636
    return-void
.end method

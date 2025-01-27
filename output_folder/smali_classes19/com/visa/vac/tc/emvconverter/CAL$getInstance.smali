.class final Lcom/visa/vac/tc/emvconverter/CAL$getInstance;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visa/vac/tc/emvconverter/CAL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "getInstance"
.end annotation


# instance fields
.field $$a:Ljava/lang/String;

.field BuildConfig:Ljava/lang/String;

.field ContactlessConfiguration:B

.field getInstance:B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(BBLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    iput-byte p1, p0, Lcom/visa/vac/tc/emvconverter/CAL$getInstance;->ContactlessConfiguration:B

    .line 609
    iput-byte p2, p0, Lcom/visa/vac/tc/emvconverter/CAL$getInstance;->getInstance:B

    .line 610
    iput-object p3, p0, Lcom/visa/vac/tc/emvconverter/CAL$getInstance;->$$a:Ljava/lang/String;

    .line 611
    iput-object p4, p0, Lcom/visa/vac/tc/emvconverter/CAL$getInstance;->BuildConfig:Ljava/lang/String;

    .line 612
    return-void
.end method

.class public Lcom/visa/vac/tc/emvconverter/model/JsonQualifier$qualifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visa/vac/tc/emvconverter/model/JsonQualifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "qualifier"
.end annotation


# instance fields
.field qualifier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/JsonQualifier$qualifier;->qualifier:Ljava/lang/String;

    .line 19
    return-void
.end method

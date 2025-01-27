.class public Lcom/alcineo/softpos/ilcoaen;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static enolcai:[B

.field private static nacieol:Lcom/alcineo/utils/tlv/TlvItemComparator;

.field private static ocenlai:[B


# instance fields
.field private acileon:Lcom/alcineo/utils/tlv/TlvItem;

.field private aoleinc:Lcom/alcineo/utils/tlv/TlvItem;

.field private noaceli:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/alcineo/softpos/ilcoaen;->enolcai:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/alcineo/softpos/ilcoaen;->ocenlai:[B

    new-instance v0, Lcom/alcineo/utils/tlv/TlvItemComparator;

    invoke-direct {v0}, Lcom/alcineo/utils/tlv/TlvItemComparator;-><init>()V

    sput-object v0, Lcom/alcineo/softpos/ilcoaen;->nacieol:Lcom/alcineo/utils/tlv/TlvItemComparator;

    const/4 v1, 0x2

    new-array v2, v1, [B

    fill-array-data v2, :array_2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/alcineo/utils/tlv/TlvItemComparator;->addIgnoredTag([BZ)V

    sget-object v0, Lcom/alcineo/softpos/ilcoaen;->nacieol:Lcom/alcineo/utils/tlv/TlvItemComparator;

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    invoke-virtual {v0, v1, v3}, Lcom/alcineo/utils/tlv/TlvItemComparator;->addIgnoredTag([BZ)V

    return-void

    :array_0
    .array-data 1
        -0x21t
        -0x7ft
        0x6t
    .end array-data

    :array_1
    .array-data 1
        -0x1t
        -0x7ft
        0x4t
    .end array-data

    :array_2
    .array-data 1
        -0x61t
        0x37t
    .end array-data

    nop

    :array_3
    .array-data 1
        -0x61t
        0x7ft
    .end array-data
.end method

.method public constructor <init>(Lcom/alcineo/utils/tlv/TlvItem;Lcom/alcineo/utils/tlv/TlvItem;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alcineo/utils/tlv/TlvItem;",
            "Lcom/alcineo/utils/tlv/TlvItem;",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alcineo/softpos/ilcoaen;->aoleinc:Lcom/alcineo/utils/tlv/TlvItem;

    iput-object p2, p0, Lcom/alcineo/softpos/ilcoaen;->acileon:Lcom/alcineo/utils/tlv/TlvItem;

    iput-object p3, p0, Lcom/alcineo/softpos/ilcoaen;->noaceli:Ljava/util/List;

    return-void
.end method

.method public static native acileon(Ljava/util/List;)[Lcom/alcineo/utils/tlv/TlvItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alcineo/utils/tlv/TlvItem;",
            ">;)[",
            "Lcom/alcineo/utils/tlv/TlvItem;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alcineo/utils/tlv/TlvException;
        }
    .end annotation
.end method


# virtual methods
.method public native acileon()Lcom/alcineo/utils/tlv/TlvItem;
.end method

.method public native acileon(Lcom/alcineo/utils/tlv/TlvItem;Lcom/alcineo/utils/tlv/TlvItem;)Z
.end method

.method public native aoleinc()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end method

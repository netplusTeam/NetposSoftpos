.class final Lcom/itextpdf/io/source/ByteBufferRandomAccessSource$1;
.super Ljava/lang/Object;
.source "ByteBufferRandomAccessSource.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1

    .line 156
    invoke-static {}, Lcom/itextpdf/io/source/BufferCleaner;->unmapHackImpl()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

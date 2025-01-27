.class public abstract Lorg/bouncycastle/bcpg/OutputStreamPacket;
.super Ljava/lang/Object;


# instance fields
.field protected out:Lorg/bouncycastle/bcpg/BCPGOutputStream;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/bcpg/BCPGOutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/bcpg/OutputStreamPacket;->out:Lorg/bouncycastle/bcpg/BCPGOutputStream;

    return-void
.end method


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract open()Lorg/bouncycastle/bcpg/BCPGOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.class public Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
.super Ljava/lang/Object;
.source "PdfCanvas.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final B:[B

.field private static final BDC:[B

.field private static final BI:[B

.field private static final BMC:[B

.field private static final BStar:[B

.field private static final BT:[B

.field private static final CS:[B

.field private static final Do:[B

.field private static final EI:[B

.field private static final EMC:[B

.field private static final ET:[B

.field private static final G:[B

.field private static final ID:[B

.field private static final IDENTITY_MATRIX_EPS:F = 1.0E-4f

.field private static final J:[B

.field private static final K:[B

.field private static final M:[B

.field private static final Q:[B

.field private static final RG:[B

.field private static final S:[B

.field private static final SCN:[B

.field private static final TD:[B

.field private static final TJ:[B

.field private static final TL:[B

.field private static final TStar:[B

.field private static final Tc:[B

.field private static final Td:[B

.field private static final Tf:[B

.field private static final Tj:[B

.field private static final Tm:[B

.field private static final Tr:[B

.field private static final Ts:[B

.field private static final Tw:[B

.field private static final Tz:[B

.field private static final W:[B

.field private static final WStar:[B

.field private static final b:[B

.field private static final bStar:[B

.field private static final c:[B

.field private static final cm:[B

.field private static final cmyk:Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Cmyk;

.field private static final cs:[B

.field private static final d:[B

.field private static final f:[B

.field private static final fStar:[B

.field private static final g:[B

.field private static final gray:Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Gray;

.field private static final gs:[B

.field private static final h:[B

.field private static final i:[B

.field private static final j:[B

.field private static final k:[B

.field private static final l:[B

.field private static final m:[B

.field private static final n:[B

.field private static final pattern:Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Pattern;

.field private static final q:[B

.field private static final re:[B

.field private static final rg:[B

.field private static final rgb:Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Rgb;

.field private static final ri:[B

.field private static final s:[B

.field private static final scn:[B

.field private static final serialVersionUID:J = -0x414fdc54a531efe2L

.field private static final sh:[B

.field private static final v:[B

.field private static final w:[B

.field private static final y:[B


# instance fields
.field protected contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

.field protected currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

.field protected document:Lcom/itextpdf/kernel/pdf/PdfDocument;

.field protected gsStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;",
            ">;"
        }
    .end annotation
.end field

.field protected layerDepth:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mcDepth:I

.field protected resources:Lcom/itextpdf/kernel/pdf/PdfResources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 107
    const-string v0, "B\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->B:[B

    .line 108
    const-string v0, "b\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->b:[B

    .line 109
    const-string v0, "BDC\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->BDC:[B

    .line 110
    const-string v0, "BI\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->BI:[B

    .line 111
    const-string v0, "BMC\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->BMC:[B

    .line 112
    const-string v0, "B*\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->BStar:[B

    .line 113
    const-string v0, "b*\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->bStar:[B

    .line 114
    const-string v0, "BT\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->BT:[B

    .line 115
    const-string v0, "c\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->c:[B

    .line 116
    const-string v0, "cm\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->cm:[B

    .line 117
    const-string v0, "cs\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->cs:[B

    .line 118
    const-string v0, "CS\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->CS:[B

    .line 119
    const-string v0, "d\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->d:[B

    .line 120
    const-string v0, "Do\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Do:[B

    .line 121
    const-string v0, "EI\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->EI:[B

    .line 122
    const-string v0, "EMC\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->EMC:[B

    .line 123
    const-string v0, "ET\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->ET:[B

    .line 124
    const-string v0, "f\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->f:[B

    .line 125
    const-string v0, "f*\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fStar:[B

    .line 126
    const-string v0, "G\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->G:[B

    .line 127
    const-string v0, "g\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->g:[B

    .line 128
    const-string v0, "gs\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->gs:[B

    .line 129
    const-string v0, "h\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->h:[B

    .line 130
    const-string v0, "i\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->i:[B

    .line 131
    const-string v0, "ID\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->ID:[B

    .line 132
    const-string v0, "j\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->j:[B

    .line 133
    const-string v0, "J\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->J:[B

    .line 134
    const-string v0, "K\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->K:[B

    .line 135
    const-string v0, "k\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->k:[B

    .line 136
    const-string v0, "l\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->l:[B

    .line 137
    const-string v0, "m\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->m:[B

    .line 138
    const-string v0, "M\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->M:[B

    .line 139
    const-string v0, "n\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->n:[B

    .line 140
    const-string/jumbo v0, "q\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->q:[B

    .line 141
    const-string v0, "Q\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Q:[B

    .line 142
    const-string/jumbo v0, "re\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->re:[B

    .line 143
    const-string/jumbo v0, "rg\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rg:[B

    .line 144
    const-string v0, "RG\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->RG:[B

    .line 145
    const-string/jumbo v0, "ri\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->ri:[B

    .line 146
    const-string v0, "S\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->S:[B

    .line 147
    const-string/jumbo v0, "s\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->s:[B

    .line 148
    const-string/jumbo v0, "scn\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->scn:[B

    .line 149
    const-string v0, "SCN\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->SCN:[B

    .line 150
    const-string/jumbo v0, "sh\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->sh:[B

    .line 151
    const-string v0, "Tc\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Tc:[B

    .line 152
    const-string v0, "Td\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Td:[B

    .line 153
    const-string v0, "TD\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->TD:[B

    .line 154
    const-string v0, "Tf\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Tf:[B

    .line 155
    const-string v0, "TJ\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->TJ:[B

    .line 156
    const-string v0, "Tj\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Tj:[B

    .line 157
    const-string v0, "TL\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->TL:[B

    .line 158
    const-string v0, "Tm\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Tm:[B

    .line 159
    const-string v0, "Tr\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Tr:[B

    .line 160
    const-string v0, "Ts\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Ts:[B

    .line 161
    const-string v0, "T*\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->TStar:[B

    .line 162
    const-string v0, "Tw\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Tw:[B

    .line 163
    const-string v0, "Tz\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Tz:[B

    .line 164
    const-string/jumbo v0, "v\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->v:[B

    .line 165
    const-string v0, "W\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->W:[B

    .line 166
    const-string/jumbo v0, "w\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->w:[B

    .line 167
    const-string v0, "W*\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->WStar:[B

    .line 168
    const-string/jumbo v0, "y\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->y:[B

    .line 170
    new-instance v0, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Gray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Gray;-><init>()V

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->gray:Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Gray;

    .line 171
    new-instance v0, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Rgb;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Rgb;-><init>()V

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rgb:Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Rgb;

    .line 172
    new-instance v0, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Cmyk;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Cmyk;-><init>()V

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->cmyk:Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Cmyk;

    .line 173
    new-instance v0, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Pattern;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Pattern;-><init>()V

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->pattern:Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;I)V
    .locals 1
    .param p1, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "pageNum"    # I

    .line 272
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfPage;)V

    .line 273
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfPage;)V
    .locals 1
    .param p1, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 229
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getReader()Lcom/itextpdf/kernel/pdf/PdfReader;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getWriter()Lcom/itextpdf/kernel/pdf/PdfWriter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getContentStreamCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getLastContentStream()Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getLength()I

    move-result v0

    if-gtz v0, :cond_1

    .line 231
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getRotation()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->isIgnorePageRotationForContent()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 229
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfPage;Z)V

    .line 232
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfPage;Z)V
    .locals 3
    .param p1, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;
    .param p2, "wrapOldContent"    # Z

    .line 242
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getPageStream(Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 243
    if-eqz p2, :cond_0

    .line 245
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->newContentStreamBefore()Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    const-string/jumbo v1, "q\n"

    invoke-static {v1}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 246
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    const-string v1, "Q\n"

    invoke-static {v1}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 248
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getRotation()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->isIgnorePageRotationForContent()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_1

    .line 249
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->isPageRotationInverseMatrixWritten()Z

    move-result v0

    if-nez v0, :cond_2

    .line 250
    :cond_1
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->applyRotation(Lcom/itextpdf/kernel/pdf/PdfPage;)V

    .line 251
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->setPageRotationInverseMatrixWritten()V

    .line 253
    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1
    .param p1, "contentStream"    # Lcom/itextpdf/kernel/pdf/PdfStream;
    .param p2, "resources"    # Lcom/itextpdf/kernel/pdf/PdfResources;
    .param p3, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->gsStack:Ljava/util/Stack;

    .line 185
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    .line 218
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->ensureStreamDataIsReadyToBeProcessed(Lcom/itextpdf/kernel/pdf/PdfStream;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 219
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->resources:Lcom/itextpdf/kernel/pdf/PdfResources;

    .line 220
    iput-object p3, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 221
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 2
    .param p1, "xObj"    # Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .param p2, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 262
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 263
    return-void
.end method

.method private addForm(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 8
    .param p1, "form"    # Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2593
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addForm(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method private addForm(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 11
    .param p1, "form"    # Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2608
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->BBox:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 2609
    .local v0, "bbox":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-eqz v0, :cond_0

    .line 2611
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 2612
    .local v1, "formWidth":F
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 2613
    .local v2, "formHeight":F
    const/4 v6, 0x0

    const/4 v7, 0x0

    div-float v3, p4, v1

    mul-float v8, v3, v2

    move-object v3, p0

    move-object v4, p1

    move v5, p4

    move v9, p2

    move v10, p3

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addForm(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v3

    return-object v3

    .line 2610
    .end local v1    # "formWidth":F
    .end local v2    # "formHeight":F
    :cond_0
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "PdfFormXObject has invalid BBox."

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private addForm(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 16
    .param p1, "form"    # Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .param p2, "a"    # F
    .param p3, "b"    # F
    .param p4, "c"    # F
    .param p5, "d"    # F
    .param p6, "e"    # F
    .param p7, "f"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2554
    move-object/from16 v13, p0

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2555
    move/from16 v14, p2

    float-to-double v1, v14

    move/from16 v15, p3

    float-to-double v3, v15

    move/from16 v11, p4

    float-to-double v5, v11

    move/from16 v12, p5

    float-to-double v7, v12

    move/from16 v9, p6

    float-to-double v10, v9

    move/from16 v0, p7

    float-to-double v14, v0

    move-object/from16 v0, p0

    move-wide v9, v10

    move-wide v11, v14

    invoke-virtual/range {v0 .. v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2556
    iget-object v0, v13, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->resources:Lcom/itextpdf/kernel/pdf/PdfResources;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfResources;->addForm(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    .line 2557
    .local v0, "name":Lcom/itextpdf/kernel/pdf/PdfName;
    iget-object v2, v13, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v3, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Do:[B

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 2558
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2559
    return-object v13
.end method

.method private addForm(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FFFZ)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 11
    .param p1, "form"    # Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "height"    # F
    .param p5, "dummy"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2630
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->BBox:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 2631
    .local v0, "bbox":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-eqz v0, :cond_0

    .line 2633
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 2634
    .local v1, "formWidth":F
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 2635
    .local v2, "formHeight":F
    div-float v3, p4, v2

    mul-float v5, v3, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move v8, p4

    move v9, p2

    move v10, p3

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addForm(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v3

    return-object v3

    .line 2632
    .end local v1    # "formWidth":F
    .end local v2    # "formHeight":F
    :cond_0
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "PdfFormXObject has invalid BBox."

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private addForm(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 8
    .param p1, "form"    # Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .param p2, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2666
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v6

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addForm(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method private addFormAt(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 20
    .param p1, "form"    # Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 2571
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->calculateBBoxMultipliedByMatrix(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    .line 2572
    .local v2, "bBox":Lcom/itextpdf/kernel/geom/Rectangle;
    new-instance v3, Lcom/itextpdf/kernel/geom/Vector;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v4

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    .line 2573
    .local v3, "bBoxMin":Lcom/itextpdf/kernel/geom/Vector;
    new-instance v4, Lcom/itextpdf/kernel/geom/Vector;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v5

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v7

    invoke-direct {v4, v5, v7, v6}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    .line 2574
    .local v4, "bBoxMax":Lcom/itextpdf/kernel/geom/Vector;
    new-instance v5, Lcom/itextpdf/kernel/geom/Vector;

    invoke-direct {v5, v0, v1, v6}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    .line 2575
    .local v5, "rectMin":Lcom/itextpdf/kernel/geom/Vector;
    new-instance v7, Lcom/itextpdf/kernel/geom/Vector;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v9

    add-float/2addr v9, v0

    invoke-virtual {v3, v8}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v10

    sub-float/2addr v9, v10

    .line 2576
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v11

    add-float/2addr v11, v1

    invoke-virtual {v3, v10}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v12

    sub-float/2addr v11, v12

    invoke-direct {v7, v9, v11, v6}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    move-object v6, v7

    .line 2578
    .local v6, "rectMax":Lcom/itextpdf/kernel/geom/Vector;
    invoke-static {v5, v6, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->calculateTransformationMatrix(Lcom/itextpdf/kernel/geom/Vector;Lcom/itextpdf/kernel/geom/Vector;Lcom/itextpdf/kernel/geom/Vector;Lcom/itextpdf/kernel/geom/Vector;)[F

    move-result-object v7

    .line 2579
    .local v7, "result":[F
    aget v13, v7, v8

    aget v14, v7, v10

    const/4 v8, 0x2

    aget v15, v7, v8

    const/4 v8, 0x3

    aget v16, v7, v8

    const/4 v8, 0x4

    aget v17, v7, v8

    const/4 v8, 0x5

    aget v18, v7, v8

    const/16 v19, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    invoke-direct/range {v11 .. v19}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addFormWithTransformationMatrix(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FFFFFFZ)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v8

    return-object v8
.end method

.method private addFormFittedIntoRectangle(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 16
    .param p1, "form"    # Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .param p2, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 2646
    invoke-static/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->calculateBBoxMultipliedByMatrix(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 2647
    .local v0, "bBox":Lcom/itextpdf/kernel/geom/Rectangle;
    new-instance v1, Lcom/itextpdf/kernel/geom/Vector;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v2

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    .line 2648
    .local v1, "bBoxMin":Lcom/itextpdf/kernel/geom/Vector;
    new-instance v2, Lcom/itextpdf/kernel/geom/Vector;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v3

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v5

    invoke-direct {v2, v3, v5, v4}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    .line 2649
    .local v2, "bBoxMax":Lcom/itextpdf/kernel/geom/Vector;
    new-instance v3, Lcom/itextpdf/kernel/geom/Vector;

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v6

    invoke-direct {v3, v5, v6, v4}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    .line 2650
    .local v3, "rectMin":Lcom/itextpdf/kernel/geom/Vector;
    new-instance v5, Lcom/itextpdf/kernel/geom/Vector;

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v7

    invoke-direct {v5, v6, v7, v4}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    move-object v4, v5

    .line 2652
    .local v4, "rectMax":Lcom/itextpdf/kernel/geom/Vector;
    invoke-static {v3, v4, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->calculateTransformationMatrix(Lcom/itextpdf/kernel/geom/Vector;Lcom/itextpdf/kernel/geom/Vector;Lcom/itextpdf/kernel/geom/Vector;Lcom/itextpdf/kernel/geom/Vector;)[F

    move-result-object v5

    .line 2653
    .local v5, "result":[F
    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v6, 0x1

    aget v10, v5, v6

    const/4 v6, 0x2

    aget v11, v5, v6

    const/4 v6, 0x3

    aget v12, v5, v6

    const/4 v6, 0x4

    aget v13, v5, v6

    const/4 v6, 0x5

    aget v14, v5, v6

    const/4 v15, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-direct/range {v7 .. v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addFormWithTransformationMatrix(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FFFFFFZ)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v6

    return-object v6
.end method

.method private addFormWithTransformationMatrix(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FFFFFFZ)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 16
    .param p1, "form"    # Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .param p2, "a"    # F
    .param p3, "b"    # F
    .param p4, "c"    # F
    .param p5, "d"    # F
    .param p6, "e"    # F
    .param p7, "f"    # F
    .param p8, "writeIdentityMatrix"    # Z

    .line 2528
    move-object/from16 v13, p0

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2529
    if-nez p8, :cond_0

    invoke-static/range {p2 .. p7}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->isIdentityMatrix(FFFFFF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2530
    :cond_0
    move/from16 v14, p2

    float-to-double v1, v14

    move/from16 v15, p3

    float-to-double v3, v15

    move/from16 v11, p4

    float-to-double v5, v11

    move/from16 v12, p5

    float-to-double v7, v12

    move/from16 v9, p6

    float-to-double v10, v9

    move/from16 v0, p7

    float-to-double v14, v0

    move-object/from16 v0, p0

    move-wide v9, v10

    move-wide v11, v14

    invoke-virtual/range {v0 .. v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2532
    :cond_1
    iget-object v0, v13, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->resources:Lcom/itextpdf/kernel/pdf/PdfResources;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfResources;->addForm(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    .line 2533
    .local v0, "name":Lcom/itextpdf/kernel/pdf/PdfName;
    iget-object v2, v13, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v3, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Do:[B

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 2534
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2535
    return-object v13
.end method

.method private addImageAt(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 8
    .param p1, "image"    # Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 2704
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getWidth()F

    move-result v2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getHeight()F

    move-result v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addImageWithTransformationMatrix(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method private addImageFittedIntoRectangle(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 8
    .param p1, "image"    # Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;
    .param p2, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 2715
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v6

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addImageWithTransformationMatrix(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method private addImageWithTransformationMatrix(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 16
    .param p1, "xObject"    # Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .param p2, "a"    # F
    .param p3, "b"    # F
    .param p4, "c"    # F
    .param p5, "d"    # F
    .param p6, "e"    # F
    .param p7, "f"    # F

    .line 2682
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2683
    move/from16 v15, p2

    float-to-double v1, v15

    move/from16 v11, p3

    float-to-double v3, v11

    move/from16 v12, p4

    float-to-double v5, v12

    move/from16 v9, p5

    float-to-double v7, v9

    move/from16 v10, p6

    float-to-double v11, v10

    move/from16 v0, p7

    float-to-double v13, v0

    move-object/from16 v0, p0

    move-wide v9, v11

    move-wide v11, v13

    invoke-virtual/range {v0 .. v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2685
    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    if-eqz v1, :cond_0

    .line 2686
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->resources:Lcom/itextpdf/kernel/pdf/PdfResources;

    move-object v3, v0

    check-cast v3, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfResources;->addImage(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    .local v2, "name":Lcom/itextpdf/kernel/pdf/PdfName;
    goto :goto_0

    .line 2688
    .end local v2    # "name":Lcom/itextpdf/kernel/pdf/PdfName;
    :cond_0
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->resources:Lcom/itextpdf/kernel/pdf/PdfResources;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfResources;->addImage(Lcom/itextpdf/kernel/pdf/PdfStream;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    .line 2690
    .restart local v2    # "name":Lcom/itextpdf/kernel/pdf/PdfName;
    :goto_0
    iget-object v3, v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v4, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Do:[B

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 2691
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2692
    return-object v1
.end method

.method private addToPropertiesAndBeginLayer(Lcom/itextpdf/kernel/pdf/layer/IPdfOCG;)V
    .locals 3
    .param p1, "layer"    # Lcom/itextpdf/kernel/pdf/layer/IPdfOCG;

    .line 2745
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->resources:Lcom/itextpdf/kernel/pdf/PdfResources;

    invoke-interface {p1}, Lcom/itextpdf/kernel/pdf/layer/IPdfOCG;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfResources;->addProperties(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    .line 2746
    .local v0, "name":Lcom/itextpdf/kernel/pdf/PdfName;
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->OC:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 2747
    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->BDC:[B

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeNewLine()Ljava/io/OutputStream;

    .line 2748
    return-void
.end method

.method private applyRotation(Lcom/itextpdf/kernel/pdf/PdfPage;)V
    .locals 37
    .param p1, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 2777
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPageSizeWithRotation()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 2778
    .local v0, "rectangle":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getRotation()I

    move-result v1

    .line 2779
    .local v1, "rotation":I
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 2787
    :sswitch_0
    const-wide/16 v3, 0x0

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v2

    float-to-double v13, v2

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_0

    .line 2784
    :sswitch_1
    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v4

    float-to-double v4, v4

    move-object/from16 v15, p0

    move-wide/from16 v24, v2

    move-wide/from16 v26, v4

    invoke-virtual/range {v15 .. v27}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2785
    goto :goto_0

    .line 2781
    :sswitch_2
    const-wide/16 v25, 0x0

    const-wide/high16 v27, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v29, -0x4010000000000000L    # -1.0

    const-wide/16 v31, 0x0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v2

    float-to-double v2, v2

    const-wide/16 v35, 0x0

    move-object/from16 v24, p0

    move-wide/from16 v33, v2

    invoke-virtual/range {v24 .. v36}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2782
    nop

    .line 2790
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method public static bezierArc(DDDDDD)Ljava/util/List;
    .locals 46
    .param p0, "x1"    # D
    .param p2, "y1"    # D
    .param p4, "x2"    # D
    .param p6, "y2"    # D
    .param p8, "startAng"    # D
    .param p10, "extent"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDDDDD)",
            "Ljava/util/List<",
            "[D>;"
        }
    .end annotation

    .line 1091
    cmpl-double v0, p0, p4

    if-lez v0, :cond_0

    .line 1092
    move-wide/from16 v0, p0

    .line 1093
    .local v0, "tmp":D
    move-wide/from16 v2, p4

    .line 1094
    .end local p0    # "x1":D
    .local v2, "x1":D
    move-wide v4, v0

    .end local p4    # "x2":D
    .local v4, "x2":D
    goto :goto_0

    .line 1091
    .end local v0    # "tmp":D
    .end local v2    # "x1":D
    .end local v4    # "x2":D
    .restart local p0    # "x1":D
    .restart local p4    # "x2":D
    :cond_0
    move-wide/from16 v2, p0

    move-wide/from16 v4, p4

    .line 1096
    .end local p0    # "x1":D
    .end local p4    # "x2":D
    .restart local v2    # "x1":D
    .restart local v4    # "x2":D
    :goto_0
    cmpl-double v0, p6, p2

    if-lez v0, :cond_1

    .line 1097
    move-wide/from16 v0, p2

    .line 1098
    .restart local v0    # "tmp":D
    move-wide/from16 v6, p6

    .line 1099
    .end local p2    # "y1":D
    .local v6, "y1":D
    move-wide v8, v0

    .end local p6    # "y2":D
    .local v8, "y2":D
    goto :goto_1

    .line 1096
    .end local v0    # "tmp":D
    .end local v6    # "y1":D
    .end local v8    # "y2":D
    .restart local p2    # "y1":D
    .restart local p6    # "y2":D
    :cond_1
    move-wide/from16 v6, p2

    move-wide/from16 v8, p6

    .line 1104
    .end local p2    # "y1":D
    .end local p6    # "y2":D
    .restart local v6    # "y1":D
    .restart local v8    # "y2":D
    :goto_1
    invoke-static/range {p10 .. p11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v10, 0x4056800000000000L    # 90.0

    cmpg-double v0, v0, v10

    if-gtz v0, :cond_2

    .line 1105
    move-wide/from16 v0, p10

    .line 1106
    .local v0, "fragAngle":D
    const/4 v10, 0x1

    .local v10, "Nfrag":I
    goto :goto_2

    .line 1108
    .end local v0    # "fragAngle":D
    .end local v10    # "Nfrag":I
    :cond_2
    invoke-static/range {p10 .. p11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    div-double/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v10, v0

    .line 1109
    .restart local v10    # "Nfrag":I
    int-to-double v0, v10

    div-double v0, p10, v0

    .line 1111
    .restart local v0    # "fragAngle":D
    :goto_2
    add-double v11, v2, v4

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    div-double/2addr v11, v13

    .line 1112
    .local v11, "x_cen":D
    add-double v15, v6, v8

    div-double/2addr v15, v13

    .line 1113
    .local v15, "y_cen":D
    sub-double v17, v4, v2

    div-double v17, v17, v13

    .line 1114
    .local v17, "rx":D
    sub-double v19, v8, v6

    div-double v19, v19, v13

    .line 1115
    .local v19, "ry":D
    const-wide v13, 0x400921fb54442d18L    # Math.PI

    mul-double v21, v0, v13

    const-wide v23, 0x4076800000000000L    # 360.0

    div-double v21, v21, v23

    .line 1116
    .local v21, "halfAng":D
    const-wide v23, 0x3ff5555555555555L    # 1.3333333333333333

    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v27

    sub-double v25, v25, v27

    mul-double v25, v25, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v23

    div-double v25, v25, v23

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->abs(D)D

    move-result-wide v23

    .line 1117
    .local v23, "kappa":D
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 p0, v25

    .line 1118
    .local p0, "pointList":Ljava/util/List;, "Ljava/util/List<[D>;"
    const/16 v25, 0x0

    move/from16 v13, v25

    .local v13, "iter":I
    :goto_3
    if-ge v13, v10, :cond_4

    .line 1119
    move-wide/from16 p4, v2

    .end local v2    # "x1":D
    .local p4, "x1":D
    int-to-double v2, v13

    mul-double/2addr v2, v0

    add-double v2, p8, v2

    const-wide v25, 0x400921fb54442d18L    # Math.PI

    mul-double v2, v2, v25

    const-wide v27, 0x4066800000000000L    # 180.0

    div-double v2, v2, v27

    .line 1120
    .local v2, "theta0":D
    add-int/lit8 v14, v13, 0x1

    move-wide/from16 v29, v4

    .end local v4    # "x2":D
    .local v29, "x2":D
    int-to-double v4, v14

    mul-double/2addr v4, v0

    add-double v4, p8, v4

    mul-double v4, v4, v25

    div-double v4, v4, v27

    .line 1121
    .local v4, "theta1":D
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v27

    .line 1122
    .local v27, "cos0":D
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v31

    .line 1123
    .local v31, "cos1":D
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v33

    .line 1124
    .local v33, "sin0":D
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v35

    .line 1125
    .local v35, "sin1":D
    const-wide/16 v37, 0x0

    cmpl-double v14, v0, v37

    const/16 v37, 0x7

    const/16 v38, 0x6

    const/16 v39, 0x5

    const/16 v40, 0x4

    const/16 v41, 0x3

    const/16 v42, 0x2

    const/16 v43, 0x0

    move-wide/from16 p1, v0

    .end local v0    # "fragAngle":D
    .local p1, "fragAngle":D
    const/16 v0, 0x8

    const/4 v1, 0x1

    if-lez v14, :cond_3

    .line 1126
    new-array v0, v0, [D

    mul-double v44, v17, v27

    add-double v44, v11, v44

    aput-wide v44, v0, v43

    mul-double v43, v19, v33

    sub-double v43, v15, v43

    aput-wide v43, v0, v1

    mul-double v43, v23, v33

    sub-double v43, v27, v43

    mul-double v43, v43, v17

    add-double v43, v11, v43

    aput-wide v43, v0, v42

    mul-double v42, v23, v27

    add-double v42, v33, v42

    mul-double v42, v42, v19

    sub-double v42, v15, v42

    aput-wide v42, v0, v41

    mul-double v41, v23, v35

    add-double v41, v31, v41

    mul-double v41, v41, v17

    add-double v41, v11, v41

    aput-wide v41, v0, v40

    mul-double v40, v23, v31

    sub-double v40, v35, v40

    mul-double v40, v40, v19

    sub-double v40, v15, v40

    aput-wide v40, v0, v39

    mul-double v39, v17, v31

    add-double v39, v11, v39

    aput-wide v39, v0, v38

    mul-double v38, v19, v35

    sub-double v38, v15, v38

    aput-wide v38, v0, v37

    move-object/from16 v14, p0

    .end local p0    # "pointList":Ljava/util/List;, "Ljava/util/List<[D>;"
    .local v14, "pointList":Ljava/util/List;, "Ljava/util/List<[D>;"
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1135
    .end local v14    # "pointList":Ljava/util/List;, "Ljava/util/List<[D>;"
    .restart local p0    # "pointList":Ljava/util/List;, "Ljava/util/List<[D>;"
    :cond_3
    move-object/from16 v14, p0

    .end local p0    # "pointList":Ljava/util/List;, "Ljava/util/List<[D>;"
    .restart local v14    # "pointList":Ljava/util/List;, "Ljava/util/List<[D>;"
    new-array v0, v0, [D

    mul-double v44, v17, v27

    add-double v44, v11, v44

    aput-wide v44, v0, v43

    mul-double v43, v19, v33

    sub-double v43, v15, v43

    aput-wide v43, v0, v1

    mul-double v43, v23, v33

    add-double v43, v27, v43

    mul-double v43, v43, v17

    add-double v43, v11, v43

    aput-wide v43, v0, v42

    mul-double v42, v23, v27

    sub-double v42, v33, v42

    mul-double v42, v42, v19

    sub-double v42, v15, v42

    aput-wide v42, v0, v41

    mul-double v41, v23, v35

    sub-double v41, v31, v41

    mul-double v41, v41, v17

    add-double v41, v11, v41

    aput-wide v41, v0, v40

    mul-double v40, v23, v31

    add-double v40, v35, v40

    mul-double v40, v40, v19

    sub-double v40, v15, v40

    aput-wide v40, v0, v39

    mul-double v39, v17, v31

    add-double v39, v11, v39

    aput-wide v39, v0, v38

    mul-double v38, v19, v35

    sub-double v38, v15, v38

    aput-wide v38, v0, v37

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1118
    .end local v2    # "theta0":D
    .end local v4    # "theta1":D
    .end local v27    # "cos0":D
    .end local v31    # "cos1":D
    .end local v33    # "sin0":D
    .end local v35    # "sin1":D
    :goto_4
    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v0, p1

    move-wide/from16 v2, p4

    move-object/from16 p0, v14

    move-wide/from16 v4, v29

    goto/16 :goto_3

    .end local v14    # "pointList":Ljava/util/List;, "Ljava/util/List<[D>;"
    .end local v29    # "x2":D
    .end local p1    # "fragAngle":D
    .end local p4    # "x1":D
    .restart local v0    # "fragAngle":D
    .local v2, "x1":D
    .local v4, "x2":D
    .restart local p0    # "pointList":Ljava/util/List;, "Ljava/util/List<[D>;"
    :cond_4
    move-object/from16 v14, p0

    .line 1145
    .end local v13    # "iter":I
    .end local p0    # "pointList":Ljava/util/List;, "Ljava/util/List<[D>;"
    .restart local v14    # "pointList":Ljava/util/List;, "Ljava/util/List<[D>;"
    return-object v14
.end method

.method private static calculateTransformationMatrix(Lcom/itextpdf/kernel/geom/Vector;Lcom/itextpdf/kernel/geom/Vector;Lcom/itextpdf/kernel/geom/Vector;Lcom/itextpdf/kernel/geom/Vector;)[F
    .locals 6
    .param p0, "expectedMin"    # Lcom/itextpdf/kernel/geom/Vector;
    .param p1, "expectedMax"    # Lcom/itextpdf/kernel/geom/Vector;
    .param p2, "actualMin"    # Lcom/itextpdf/kernel/geom/Vector;
    .param p3, "actualMax"    # Lcom/itextpdf/kernel/geom/Vector;

    .line 2807
    const/4 v0, 0x6

    new-array v0, v0, [F

    .line 2808
    .local v0, "result":[F
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v2

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p2, v1}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v3

    invoke-virtual {p3, v1}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 2809
    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v0, v2

    .line 2810
    const/4 v4, 0x2

    aput v3, v0, v4

    .line 2811
    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v3

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p2, v2}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v4

    invoke-virtual {p3, v2}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    const/4 v4, 0x3

    aput v3, v0, v4

    .line 2812
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v3

    invoke-virtual {p2, v1}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v5

    aget v1, v0, v1

    mul-float/2addr v5, v1

    sub-float/2addr v3, v5

    const/4 v1, 0x4

    aput v3, v0, v1

    .line 2813
    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v1

    invoke-virtual {p2, v2}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v2

    aget v3, v0, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 2814
    return-object v0
.end method

.method private createColor(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[FLcom/itextpdf/kernel/pdf/colorspace/PdfPattern;)Lcom/itextpdf/kernel/colors/Color;
    .locals 3
    .param p1, "colorSpace"    # Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;
    .param p2, "colorValue"    # [F
    .param p3, "pattern"    # Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;

    .line 2751
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$UncoloredTilingPattern;

    if-eqz v0, :cond_0

    .line 2752
    new-instance v0, Lcom/itextpdf/kernel/colors/PatternColor;

    move-object v1, p3

    check-cast v1, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;

    move-object v2, p1

    check-cast v2, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$UncoloredTilingPattern;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$UncoloredTilingPattern;->getUnderlyingColorSpace()Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/itextpdf/kernel/colors/PatternColor;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[F)V

    return-object v0

    .line 2753
    :cond_0
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Pattern;

    if-eqz v0, :cond_1

    .line 2754
    new-instance v0, Lcom/itextpdf/kernel/colors/PatternColor;

    invoke-direct {v0, p3}, Lcom/itextpdf/kernel/colors/PatternColor;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;)V

    return-object v0

    .line 2756
    :cond_1
    invoke-static {p1, p2}, Lcom/itextpdf/kernel/colors/Color;->makeColor(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[F)Lcom/itextpdf/kernel/colors/Color;

    move-result-object v0

    return-object v0
.end method

.method private ensureStreamDataIsReadyToBeProcessed(Lcom/itextpdf/kernel/pdf/PdfStream;)Lcom/itextpdf/kernel/pdf/PdfStream;
    .locals 1
    .param p1, "stream"    # Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 2719
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->isFlushed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2720
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2722
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->setData([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2725
    goto :goto_0

    .line 2723
    :catch_0
    move-exception v0

    .line 2728
    :cond_1
    :goto_0
    return-object p1
.end method

.method private getDashPatternArray(F)Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 1
    .param p1, "phase"    # F

    .line 2760
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getDashPatternArray([FF)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    return-object v0
.end method

.method private getDashPatternArray([FF)Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 8
    .param p1, "dashArray"    # [F
    .param p2, "phase"    # F

    .line 2764
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 2765
    .local v0, "dashPatternArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 2766
    .local v1, "dArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-eqz p1, :cond_0

    .line 2767
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, p1, v3

    .line 2768
    .local v4, "fl":F
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfNumber;

    float-to-double v6, v4

    invoke-direct {v5, v6, v7}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v1, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 2767
    .end local v4    # "fl":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2771
    :cond_0
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 2772
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    float-to-double v3, p2

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 2773
    return-object v0
.end method

.method private static getPageStream(Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/PdfStream;
    .locals 2
    .param p0, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 2793
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getLastContentStream()Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v0

    .line 2794
    .local v0, "stream":Lcom/itextpdf/kernel/pdf/PdfStream;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->newContentStreamAfter()Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method private getSubrangeWidth(Lcom/itextpdf/io/font/otf/GlyphLine;II)F
    .locals 8
    .param p1, "text"    # Lcom/itextpdf/io/font/otf/GlyphLine;
    .param p2, "from"    # I
    .param p3, "to"    # I

    .line 856
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFontSize()F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 857
    .local v0, "fontSize":F
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getCharSpacing()F

    move-result v1

    .line 858
    .local v1, "charSpacing":F
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getHorizontalScaling()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    .line 859
    .local v2, "scaling":F
    const/4 v3, 0x0

    .line 860
    .local v3, "width":F
    move v4, p2

    .local v4, "iter":I
    :goto_0
    if-gt v4, p3, :cond_2

    .line 861
    invoke-virtual {p1, v4}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v5

    .line 862
    .local v5, "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    invoke-virtual {v5}, Lcom/itextpdf/io/font/otf/Glyph;->hasPlacement()Z

    move-result v6

    if-nez v6, :cond_0

    .line 863
    invoke-virtual {v5}, Lcom/itextpdf/io/font/otf/Glyph;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v0

    add-float/2addr v6, v1

    invoke-direct {p0, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getWordSpacingAddition(Lcom/itextpdf/io/font/otf/Glyph;)F

    move-result v7

    add-float/2addr v6, v7

    mul-float/2addr v6, v2

    add-float/2addr v3, v6

    .line 866
    :cond_0
    if-le v4, p2, :cond_1

    .line 867
    add-int/lit8 v6, v4, -0x1

    invoke-virtual {p1, v6}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/io/font/otf/Glyph;->getXAdvance()S

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v0

    mul-float/2addr v6, v2

    add-float/2addr v3, v6

    .line 860
    .end local v5    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 871
    .end local v4    # "iter":I
    :cond_2
    return v3
.end method

.method private getSubrangeYDelta(Lcom/itextpdf/io/font/otf/GlyphLine;II)F
    .locals 4
    .param p1, "text"    # Lcom/itextpdf/io/font/otf/GlyphLine;
    .param p2, "from"    # I
    .param p3, "to"    # I

    .line 875
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFontSize()F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 876
    .local v0, "fontSize":F
    const/4 v1, 0x0

    .line 877
    .local v1, "yDelta":F
    move v2, p2

    .local v2, "iter":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 878
    invoke-virtual {p1, v2}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/font/otf/Glyph;->getYAdvance()S

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v1, v3

    .line 877
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 880
    .end local v2    # "iter":I
    :cond_0
    return v1
.end method

.method private getWordSpacingAddition(Lcom/itextpdf/io/font/otf/Glyph;)F
    .locals 2
    .param p1, "glyph"    # Lcom/itextpdf/io/font/otf/Glyph;

    .line 887
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    instance-of v0, v0, Lcom/itextpdf/kernel/font/PdfType0Font;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->hasValidUnicode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getWordSpacing()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isIdentityMatrix(FFFFFF)Z
    .locals 3
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F
    .param p3, "d"    # F
    .param p4, "e"    # F
    .param p5, "f"    # F

    .line 2818
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    sub-float/2addr v0, p3

    .line 2819
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2818
    :goto_0
    return v0
.end method

.method private static iteratorToList(Ljava/util/Iterator;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 2798
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2799
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2800
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2802
    :cond_0
    return-object v0
.end method

.method private showTextInt(Ljava/lang/String;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .line 2738
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    sget-object v2, Lcom/itextpdf/kernel/pdf/IsoKey;->FONT_GLYPHS:Lcom/itextpdf/kernel/pdf/IsoKey;

    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkIsoConformance(Ljava/lang/Object;Lcom/itextpdf/kernel/pdf/IsoKey;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 2739
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2741
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/itextpdf/kernel/font/PdfFont;->writeText(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfOutputStream;)V

    .line 2742
    return-void

    .line 2740
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    const-string v2, "Font and size must be set before writing any text."

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public addImage(Lcom/itextpdf/io/image/ImageData;FFFFFF)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .locals 1
    .param p1, "image"    # Lcom/itextpdf/io/image/ImageData;
    .param p2, "a"    # F
    .param p3, "b"    # F
    .param p4, "c"    # F
    .param p5, "d"    # F
    .param p6, "e"    # F
    .param p7, "f"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1883
    invoke-virtual/range {p0 .. p7}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addImageWithTransformationMatrix(Lcom/itextpdf/io/image/ImageData;FFFFFF)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    move-result-object v0

    return-object v0
.end method

.method public addImage(Lcom/itextpdf/io/image/ImageData;FFFFFFZ)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .locals 1
    .param p1, "image"    # Lcom/itextpdf/io/image/ImageData;
    .param p2, "a"    # F
    .param p3, "b"    # F
    .param p4, "c"    # F
    .param p5, "d"    # F
    .param p6, "e"    # F
    .param p7, "f"    # F
    .param p8, "asInline"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1927
    invoke-virtual/range {p0 .. p8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addImageWithTransformationMatrix(Lcom/itextpdf/io/image/ImageData;FFFFFFZ)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    move-result-object v0

    return-object v0
.end method

.method public addImage(Lcom/itextpdf/io/image/ImageData;FFFZ)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .locals 10
    .param p1, "image"    # Lcom/itextpdf/io/image/ImageData;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "asInline"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2070
    invoke-virtual {p1}, Lcom/itextpdf/io/image/ImageData;->getOriginalType()Lcom/itextpdf/io/image/ImageType;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/io/image/ImageType;->WMF:Lcom/itextpdf/io/image/ImageType;

    if-ne v0, v1, :cond_0

    .line 2071
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;-><init>(Lcom/itextpdf/io/image/ImageData;)V

    .line 2073
    .local v0, "wmf":Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;->createFormXObject(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    move-result-object v1

    .line 2074
    .local v1, "xObject":Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, v1

    move v4, p4

    move v7, p4

    move v8, p2

    move v9, p3

    invoke-direct/range {v2 .. v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addImageWithTransformationMatrix(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2075
    return-object v1

    .line 2077
    .end local v0    # "wmf":Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;
    .end local v1    # "xObject":Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;-><init>(Lcom/itextpdf/io/image/ImageData;)V

    .line 2078
    .local v0, "imageXObject":Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;
    if-eqz p5, :cond_1

    invoke-virtual {p1}, Lcom/itextpdf/io/image/ImageData;->canImageBeInline()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2079
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/itextpdf/io/image/ImageData;->getWidth()F

    move-result v1

    div-float v1, p4, v1

    invoke-virtual {p1}, Lcom/itextpdf/io/image/ImageData;->getHeight()F

    move-result v2

    mul-float v6, v1, v2

    move-object v1, p0

    move-object v2, v0

    move v3, p4

    move v7, p2

    move v8, p3

    invoke-virtual/range {v1 .. v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addInlineImage(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;FFFFFF)V

    .line 2080
    const/4 v1, 0x0

    return-object v1

    .line 2082
    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/itextpdf/io/image/ImageData;->getWidth()F

    move-result v1

    div-float v1, p4, v1

    invoke-virtual {p1}, Lcom/itextpdf/io/image/ImageData;->getHeight()F

    move-result v2

    mul-float v6, v1, v2

    move-object v1, p0

    move-object v2, v0

    move v3, p4

    move v7, p2

    move v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addImageWithTransformationMatrix(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2083
    return-object v0
.end method

.method public addImage(Lcom/itextpdf/io/image/ImageData;FFFZZ)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .locals 10
    .param p1, "image"    # Lcom/itextpdf/io/image/ImageData;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "height"    # F
    .param p5, "asInline"    # Z
    .param p6, "dummy"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2109
    invoke-virtual {p1}, Lcom/itextpdf/io/image/ImageData;->getHeight()F

    move-result v0

    div-float v0, p4, v0

    invoke-virtual {p1}, Lcom/itextpdf/io/image/ImageData;->getWidth()F

    move-result v1

    mul-float v3, v0, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v6, p4

    move v7, p2

    move v8, p3

    move v9, p5

    invoke-virtual/range {v1 .. v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addImageWithTransformationMatrix(Lcom/itextpdf/io/image/ImageData;FFFFFFZ)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    move-result-object v0

    return-object v0
.end method

.method public addImage(Lcom/itextpdf/io/image/ImageData;FFZ)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .locals 1
    .param p1, "image"    # Lcom/itextpdf/io/image/ImageData;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "asInline"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2021
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addImageAt(Lcom/itextpdf/io/image/ImageData;FFZ)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    move-result-object v0

    return-object v0
.end method

.method public addImage(Lcom/itextpdf/io/image/ImageData;Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .locals 1
    .param p1, "image"    # Lcom/itextpdf/io/image/ImageData;
    .param p2, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p3, "asInline"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1984
    invoke-virtual {p0, p1, p2, p3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addImageFittedIntoRectangle(Lcom/itextpdf/io/image/ImageData;Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    move-result-object v0

    return-object v0
.end method

.method public addImageAt(Lcom/itextpdf/io/image/ImageData;FFZ)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .locals 10
    .param p1, "image"    # Lcom/itextpdf/io/image/ImageData;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "asInline"    # Z

    .line 2034
    invoke-virtual {p1}, Lcom/itextpdf/io/image/ImageData;->getOriginalType()Lcom/itextpdf/io/image/ImageType;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/io/image/ImageType;->WMF:Lcom/itextpdf/io/image/ImageType;

    if-ne v0, v1, :cond_0

    .line 2035
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;-><init>(Lcom/itextpdf/io/image/ImageData;)V

    .line 2036
    .local v0, "wmf":Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;->createFormXObject(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    move-result-object v1

    .line 2037
    .local v1, "xObject":Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    invoke-virtual {p1}, Lcom/itextpdf/io/image/ImageData;->getWidth()F

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/itextpdf/io/image/ImageData;->getHeight()F

    move-result v7

    move-object v2, p0

    move-object v3, v1

    move v8, p2

    move v9, p3

    invoke-virtual/range {v2 .. v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addXObject(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2038
    return-object v1

    .line 2040
    .end local v0    # "wmf":Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;
    .end local v1    # "xObject":Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;-><init>(Lcom/itextpdf/io/image/ImageData;)V

    .line 2041
    .local v0, "imageXObject":Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;
    if-eqz p4, :cond_1

    invoke-virtual {p1}, Lcom/itextpdf/io/image/ImageData;->canImageBeInline()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2042
    invoke-virtual {p1}, Lcom/itextpdf/io/image/ImageData;->getWidth()F

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/itextpdf/io/image/ImageData;->getHeight()F

    move-result v6

    move-object v1, p0

    move-object v2, v0

    move v7, p2

    move v8, p3

    invoke-virtual/range {v1 .. v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addInlineImage(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;FFFFFF)V

    .line 2043
    const/4 v1, 0x0

    return-object v1

    .line 2045
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/io/image/ImageData;->getWidth()F

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/itextpdf/io/image/ImageData;->getHeight()F

    move-result v6

    move-object v1, p0

    move-object v2, v0

    move v7, p2

    move v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addImageWithTransformationMatrix(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2046
    return-object v0
.end method

.method public addImageFittedIntoRectangle(Lcom/itextpdf/io/image/ImageData;Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .locals 9
    .param p1, "image"    # Lcom/itextpdf/io/image/ImageData;
    .param p2, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p3, "asInline"    # Z

    .line 2004
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    .line 2005
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v6

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v7

    .line 2004
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addImageWithTransformationMatrix(Lcom/itextpdf/io/image/ImageData;FFFFFFZ)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    move-result-object v0

    return-object v0
.end method

.method public addImageWithTransformationMatrix(Lcom/itextpdf/io/image/ImageData;FFFFFF)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .locals 9
    .param p1, "image"    # Lcom/itextpdf/io/image/ImageData;
    .param p2, "a"    # F
    .param p3, "b"    # F
    .param p4, "c"    # F
    .param p5, "d"    # F
    .param p6, "e"    # F
    .param p7, "f"    # F

    .line 1903
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addImageWithTransformationMatrix(Lcom/itextpdf/io/image/ImageData;FFFFFFZ)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    move-result-object v0

    return-object v0
.end method

.method public addImageWithTransformationMatrix(Lcom/itextpdf/io/image/ImageData;FFFFFFZ)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .locals 12
    .param p1, "image"    # Lcom/itextpdf/io/image/ImageData;
    .param p2, "a"    # F
    .param p3, "b"    # F
    .param p4, "c"    # F
    .param p5, "d"    # F
    .param p6, "e"    # F
    .param p7, "f"    # F
    .param p8, "asInline"    # Z

    .line 1948
    move-object v0, p1

    invoke-virtual {p1}, Lcom/itextpdf/io/image/ImageData;->getOriginalType()Lcom/itextpdf/io/image/ImageType;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/io/image/ImageType;->WMF:Lcom/itextpdf/io/image/ImageType;

    if-ne v1, v2, :cond_0

    .line 1949
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;-><init>(Lcom/itextpdf/io/image/ImageData;)V

    .line 1950
    .local v1, "wmf":Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;
    move-object v10, p0

    iget-object v2, v10, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;->createFormXObject(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    move-result-object v11

    .line 1951
    .local v11, "xObject":Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    move-object v2, p0

    move-object v3, v11

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addXObject(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 1952
    return-object v11

    .line 1954
    .end local v1    # "wmf":Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;
    .end local v11    # "xObject":Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    :cond_0
    move-object v10, p0

    new-instance v1, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;-><init>(Lcom/itextpdf/io/image/ImageData;)V

    .line 1955
    .local v1, "imageXObject":Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;
    if-eqz p8, :cond_1

    invoke-virtual {p1}, Lcom/itextpdf/io/image/ImageData;->canImageBeInline()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1956
    move-object v2, p0

    move-object v3, v1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addInlineImage(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;FFFFFF)V

    .line 1957
    const/4 v2, 0x0

    return-object v2

    .line 1959
    :cond_1
    move-object v2, p0

    move-object v3, v1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addImageWithTransformationMatrix(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 1960
    return-object v1
.end method

.method protected addInlineImage(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;FFFFFF)V
    .locals 16
    .param p1, "imageXObject"    # Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;
    .param p2, "a"    # F
    .param p3, "b"    # F
    .param p4, "c"    # F
    .param p5, "d"    # F
    .param p6, "e"    # F
    .param p7, "f"    # F

    .line 2489
    move-object/from16 v13, p0

    iget-object v0, v13, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/pdf/IsoKey;->INLINE_IMAGE:Lcom/itextpdf/kernel/pdf/IsoKey;

    iget-object v3, v13, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->resources:Lcom/itextpdf/kernel/pdf/PdfResources;

    iget-object v4, v13, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkIsoConformance(Ljava/lang/Object;Lcom/itextpdf/kernel/pdf/IsoKey;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 2490
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2491
    move/from16 v14, p2

    float-to-double v1, v14

    move/from16 v15, p3

    float-to-double v3, v15

    move/from16 v11, p4

    float-to-double v5, v11

    move/from16 v12, p5

    float-to-double v7, v12

    move/from16 v9, p6

    float-to-double v10, v9

    move/from16 v0, p7

    float-to-double v14, v0

    move-object/from16 v0, p0

    move-wide v9, v10

    move-wide v11, v14

    invoke-virtual/range {v0 .. v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2492
    iget-object v0, v13, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 2493
    .local v0, "os":Lcom/itextpdf/kernel/pdf/PdfOutputStream;
    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->BI:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 2494
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes(Z)[B

    move-result-object v1

    .line 2495
    .local v1, "imageBytes":[B
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2496
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 2497
    .local v4, "key":Lcom/itextpdf/kernel/pdf/PdfName;
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v4}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v4}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Length:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v4}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2498
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfObject;

    invoke-virtual {v0, v5}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    .line 2499
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfObject;

    invoke-virtual {v0, v5}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeNewLine()Ljava/io/OutputStream;

    .line 2501
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    .end local v4    # "key":Lcom/itextpdf/kernel/pdf/PdfName;
    :cond_0
    goto :goto_0

    .line 2502
    :cond_1
    iget-object v2, v13, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPdfVersion()Lcom/itextpdf/kernel/pdf/PdfVersion;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_2_0:Lcom/itextpdf/kernel/pdf/PdfVersion;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfVersion;->compareTo(Lcom/itextpdf/kernel/pdf/PdfVersion;)I

    move-result v2

    if-ltz v2, :cond_2

    .line 2503
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Length:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    .line 2504
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    array-length v3, v1

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeNewLine()Ljava/io/OutputStream;

    .line 2506
    :cond_2
    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->ID:[B

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 2507
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeNewLine()Ljava/io/OutputStream;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v3, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->EI:[B

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeNewLine()Ljava/io/OutputStream;

    .line 2508
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2509
    return-void
.end method

.method public addXObject(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 10
    .param p1, "xObject"    # Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    .line 2316
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    if-eqz v0, :cond_0

    .line 2317
    move-object v2, p1

    check-cast v2, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addFormWithTransformationMatrix(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FFFFFFZ)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0

    .line 2318
    :cond_0
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    if-eqz v0, :cond_1

    .line 2319
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addImageAt(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0

    .line 2321
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PdfFormXObject or PdfImageXObject expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addXObject(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2
    .param p1, "xObject"    # Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2192
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    if-eqz v0, :cond_0

    .line 2193
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    invoke-direct {p0, v0, p2, p3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addForm(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0

    .line 2194
    :cond_0
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    if-eqz v0, :cond_1

    .line 2195
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    invoke-direct {p0, v0, p2, p3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addImageAt(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0

    .line 2197
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PdfFormXObject or PdfImageXObject expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addXObject(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2
    .param p1, "xObject"    # Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2263
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    if-eqz v0, :cond_0

    .line 2264
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addForm(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0

    .line 2265
    :cond_0
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    if-eqz v0, :cond_1

    .line 2266
    invoke-static {p1, p2, p3, p4}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->calculateProportionallyFitRectangleWithWidth(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FFF)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 2267
    .local v0, "rect":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addXObject(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    return-object v1

    .line 2269
    .end local v0    # "rect":Lcom/itextpdf/kernel/geom/Rectangle;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PdfFormXObject or PdfImageXObject expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addXObject(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1
    .param p1, "xObject"    # Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .param p2, "a"    # F
    .param p3, "b"    # F
    .param p4, "c"    # F
    .param p5, "d"    # F
    .param p6, "e"    # F
    .param p7, "f"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2159
    invoke-virtual/range {p0 .. p7}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addXObjectWithTransformationMatrix(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method public addXObject(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FFFZ)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 7
    .param p1, "xObject"    # Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "height"    # F
    .param p5, "dummy"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2295
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    if-eqz v0, :cond_0

    .line 2296
    move-object v2, p1

    check-cast v2, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addForm(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FFFZ)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0

    .line 2297
    :cond_0
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    if-eqz v0, :cond_1

    .line 2298
    invoke-static {p1, p2, p3, p4}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->calculateProportionallyFitRectangleWithHeight(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FFF)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 2299
    .local v0, "rect":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addXObject(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    return-object v1

    .line 2301
    .end local v0    # "rect":Lcom/itextpdf/kernel/geom/Rectangle;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PdfFormXObject or PdfImageXObject expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addXObject(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2
    .param p1, "xObject"    # Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .param p2, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2234
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    if-eqz v0, :cond_0

    .line 2235
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    invoke-direct {p0, v0, p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addForm(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0

    .line 2236
    :cond_0
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    if-eqz v0, :cond_1

    .line 2237
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    invoke-direct {p0, v0, p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addImageFittedIntoRectangle(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0

    .line 2239
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PdfFormXObject or PdfImageXObject expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addXObjectAt(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2
    .param p1, "xObject"    # Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 2171
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    if-eqz v0, :cond_0

    .line 2172
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    invoke-direct {p0, v0, p2, p3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addFormAt(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0

    .line 2173
    :cond_0
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    if-eqz v0, :cond_1

    .line 2174
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    invoke-direct {p0, v0, p2, p3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addImageAt(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0

    .line 2176
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PdfFormXObject or PdfImageXObject expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addXObjectFittedIntoRectangle(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2
    .param p1, "xObject"    # Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .param p2, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 2211
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    if-eqz v0, :cond_0

    .line 2212
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    invoke-direct {p0, v0, p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addFormFittedIntoRectangle(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0

    .line 2213
    :cond_0
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    if-eqz v0, :cond_1

    .line 2214
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    invoke-direct {p0, v0, p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addImageFittedIntoRectangle(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0

    .line 2216
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PdfFormXObject or PdfImageXObject expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addXObjectWithTransformationMatrix(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 11
    .param p1, "xObject"    # Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .param p2, "a"    # F
    .param p3, "b"    # F
    .param p4, "c"    # F
    .param p5, "d"    # F
    .param p6, "e"    # F
    .param p7, "f"    # F

    .line 2130
    move-object v0, p1

    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    if-eqz v1, :cond_0

    .line 2131
    move-object v3, v0

    check-cast v3, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    const/4 v10, 0x1

    move-object v2, p0

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v2 .. v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addFormWithTransformationMatrix(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FFFFFFZ)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    return-object v1

    .line 2132
    :cond_0
    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    if-eqz v1, :cond_1

    .line 2133
    invoke-direct/range {p0 .. p7}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addImageWithTransformationMatrix(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    return-object v1

    .line 2135
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "PdfFormXObject or PdfImageXObject expected."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public arc(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 17
    .param p1, "x1"    # D
    .param p3, "y1"    # D
    .param p5, "x2"    # D
    .param p7, "y2"    # D
    .param p9, "startAng"    # D
    .param p11, "extent"    # D

    .line 1039
    move-object/from16 v13, p0

    invoke-static/range {p1 .. p12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->bezierArc(DDDDDD)Ljava/util/List;

    move-result-object v14

    .line 1040
    .local v14, "ar":Ljava/util/List;, "Ljava/util/List<[D>;"
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1041
    return-object v13

    .line 1042
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    .line 1043
    .local v1, "pt":[D
    aget-wide v2, v1, v0

    const/4 v0, 0x1

    aget-wide v4, v1, v0

    invoke-virtual {v13, v2, v3, v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 1044
    const/4 v0, 0x0

    move v15, v0

    .local v15, "i":I
    :goto_0
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    if-ge v15, v0, :cond_1

    .line 1045
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, [D

    .line 1046
    .end local v1    # "pt":[D
    .local v16, "pt":[D
    const/4 v0, 0x2

    aget-wide v1, v16, v0

    const/4 v0, 0x3

    aget-wide v3, v16, v0

    const/4 v0, 0x4

    aget-wide v5, v16, v0

    const/4 v0, 0x5

    aget-wide v7, v16, v0

    const/4 v0, 0x6

    aget-wide v9, v16, v0

    const/4 v0, 0x7

    aget-wide v11, v16, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 1044
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, v16

    goto :goto_0

    .line 1049
    .end local v15    # "i":I
    .end local v16    # "pt":[D
    .restart local v1    # "pt":[D
    :cond_1
    return-object v13
.end method

.method public attachContentStream(Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 0
    .param p1, "contentStream"    # Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 300
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 301
    return-void
.end method

.method public beginLayer(Lcom/itextpdf/kernel/pdf/layer/IPdfOCG;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 4
    .param p1, "layer"    # Lcom/itextpdf/kernel/pdf/layer/IPdfOCG;

    .line 1821
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1822
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal layer argument."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1823
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->layerDepth:Ljava/util/List;

    if-nez v0, :cond_2

    .line 1824
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->layerDepth:Ljava/util/List;

    .line 1825
    :cond_2
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/layer/PdfLayerMembership;

    if-eqz v0, :cond_3

    .line 1826
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->layerDepth:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1827
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addToPropertiesAndBeginLayer(Lcom/itextpdf/kernel/pdf/layer/IPdfOCG;)V

    goto :goto_2

    .line 1828
    :cond_3
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;

    if-eqz v0, :cond_6

    .line 1829
    const/4 v0, 0x0

    .line 1830
    .local v0, "num":I
    move-object v1, p1

    check-cast v1, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;

    .line 1831
    .local v1, "la":Lcom/itextpdf/kernel/pdf/layer/PdfLayer;
    :goto_1
    if-eqz v1, :cond_5

    .line 1832
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 1833
    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addToPropertiesAndBeginLayer(Lcom/itextpdf/kernel/pdf/layer/IPdfOCG;)V

    .line 1834
    add-int/lit8 v0, v0, 0x1

    .line 1836
    :cond_4
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;->getParent()Lcom/itextpdf/kernel/pdf/layer/PdfLayer;

    move-result-object v1

    goto :goto_1

    .line 1838
    :cond_5
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->layerDepth:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1839
    .end local v0    # "num":I
    .end local v1    # "la":Lcom/itextpdf/kernel/pdf/layer/PdfLayer;
    nop

    .line 1841
    :goto_2
    return-object p0

    .line 1840
    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported type for operand: layer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public beginMarkedContent(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1
    .param p1, "tag"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 2359
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->beginMarkedContent(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method public beginMarkedContent(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 3
    .param p1, "tag"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .param p2, "properties"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 2370
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->mcDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->mcDepth:I

    .line 2371
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 2372
    .local v0, "out":Lcom/itextpdf/kernel/pdf/PdfOutputStream;
    if-nez p2, :cond_0

    .line 2373
    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->BMC:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    goto :goto_0

    .line 2374
    :cond_0
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2375
    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->BDC:[B

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    goto :goto_0

    .line 2377
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->resources:Lcom/itextpdf/kernel/pdf/PdfResources;

    invoke-virtual {v1, p2}, Lcom/itextpdf/kernel/pdf/PdfResources;->addProperties(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->BDC:[B

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 2379
    :goto_0
    return-object p0
.end method

.method public beginText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2

    .line 417
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->BT:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 418
    return-object p0
.end method

.method public beginVariableText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 437
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Tx:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->beginMarkedContent(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method public circle(DDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 20
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "r"    # D

    .line 1223
    move-object/from16 v13, p0

    move-wide/from16 v14, p3

    const-wide v16, 0x3fe1ac7100000000L    # 0.552299976348877

    .line 1224
    .local v16, "curve":D
    add-double v0, p1, p5

    invoke-virtual {v13, v0, v1, v14, v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 1225
    add-double v1, p1, p5

    const-wide v18, 0x3fe1ac7100000000L    # 0.552299976348877

    mul-double v3, p5, v18

    add-double/2addr v3, v14

    mul-double v5, p5, v18

    add-double v5, p1, v5

    add-double v7, v14, p5

    add-double v11, v14, p5

    move-object/from16 v0, p0

    move-wide/from16 v9, p1

    invoke-virtual/range {v0 .. v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 1226
    mul-double v0, p5, v18

    sub-double v1, p1, v0

    add-double v3, v14, p5

    sub-double v5, p1, p5

    mul-double v7, p5, v18

    add-double/2addr v7, v14

    sub-double v9, p1, p5

    move-object/from16 v0, p0

    move-wide/from16 v11, p3

    invoke-virtual/range {v0 .. v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 1227
    sub-double v1, p1, p5

    mul-double v3, p5, v18

    sub-double v3, v14, v3

    mul-double v5, p5, v18

    sub-double v5, p1, v5

    sub-double v7, v14, p5

    sub-double v11, v14, p5

    move-wide/from16 v9, p1

    invoke-virtual/range {v0 .. v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 1228
    mul-double v0, p5, v18

    add-double v1, p1, v0

    sub-double v3, v14, p5

    add-double v5, p1, p5

    mul-double v7, p5, v18

    sub-double v7, v14, v7

    add-double v9, p1, p5

    move-object/from16 v0, p0

    move-wide/from16 v11, p3

    invoke-virtual/range {v0 .. v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 1229
    return-object v13
.end method

.method public clip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2

    .line 1312
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->W:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 1313
    return-object p0
.end method

.method public closePath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2

    .line 1251
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->h:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 1252
    return-object p0
.end method

.method public closePathEoFillStroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2

    .line 1261
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->bStar:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 1262
    return-object p0
.end method

.method public closePathFillStroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2

    .line 1271
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->b:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 1272
    return-object p0
.end method

.method public closePathStroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2

    .line 1333
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->s:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 1334
    return-object p0
.end method

.method public closeTag()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 2431
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endMarkedContent()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method public concatMatrix(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 20
    .param p1, "a"    # D
    .param p3, "b"    # D
    .param p5, "c"    # D
    .param p7, "d"    # D
    .param p9, "e"    # D
    .param p11, "f"    # D

    .line 365
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    iget-object v13, v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    double-to-float v14, v1

    double-to-float v15, v3

    double-to-float v3, v5

    double-to-float v4, v7

    double-to-float v7, v9

    double-to-float v8, v11

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v7

    move/from16 v19, v8

    invoke-virtual/range {v13 .. v19}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->updateCtm(FFFFFF)V

    .line 366
    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 367
    move-wide/from16 v7, p3

    invoke-virtual {v3, v7, v8}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 368
    invoke-virtual {v3, v5, v6}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 369
    move-wide/from16 v13, p7

    invoke-virtual {v3, v13, v14}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 370
    invoke-virtual {v3, v9, v10}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 371
    invoke-virtual {v3, v11, v12}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v4, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->cm:[B

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 372
    return-object v0
.end method

.method public concatMatrix(Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 16
    .param p1, "transform"    # Lcom/itextpdf/kernel/geom/AffineTransform;

    .line 406
    const/4 v0, 0x6

    new-array v0, v0, [F

    .line 407
    .local v0, "matrix":[F
    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/geom/AffineTransform;->getMatrix([F)V

    .line 408
    const/4 v2, 0x0

    aget v2, v0, v2

    float-to-double v4, v2

    const/4 v2, 0x1

    aget v2, v0, v2

    float-to-double v6, v2

    const/4 v2, 0x2

    aget v2, v0, v2

    float-to-double v8, v2

    const/4 v2, 0x3

    aget v2, v0, v2

    float-to-double v10, v2

    const/4 v2, 0x4

    aget v2, v0, v2

    float-to-double v12, v2

    const/4 v2, 0x5

    aget v2, v0, v2

    float-to-double v14, v2

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    return-object v2
.end method

.method public concatMatrix(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 14
    .param p1, "array"    # Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 385
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 387
    return-object p0

    .line 389
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 390
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isNumber()Z

    move-result v1

    if-nez v1, :cond_1

    .line 391
    return-object p0

    .line 389
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 394
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->doubleValue()D

    move-result-wide v2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->doubleValue()D

    move-result-wide v4

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->doubleValue()D

    move-result-wide v6

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->doubleValue()D

    move-result-wide v8

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->doubleValue()D

    move-result-wide v10

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->doubleValue()D

    move-result-wide v12

    move-object v1, p0

    invoke-virtual/range {v1 .. v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method public curveFromTo(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2
    .param p1, "x1"    # D
    .param p3, "y1"    # D
    .param p5, "x3"    # D
    .param p7, "y3"    # D

    .line 1011
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 1012
    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 1013
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 1014
    invoke-virtual {v0, p3, p4}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 1015
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 1016
    invoke-virtual {v0, p5, p6}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 1017
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 1018
    invoke-virtual {v0, p7, p8}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->y:[B

    .line 1019
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 1020
    return-object p0
.end method

.method public curveTo(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2
    .param p1, "x2"    # D
    .param p3, "y2"    # D
    .param p5, "x3"    # D
    .param p7, "y3"    # D

    .line 989
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 990
    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 991
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 992
    invoke-virtual {v0, p3, p4}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 993
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 994
    invoke-virtual {v0, p5, p6}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 995
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 996
    invoke-virtual {v0, p7, p8}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->v:[B

    .line 997
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 998
    return-object p0
.end method

.method public curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2
    .param p1, "x1"    # D
    .param p3, "y1"    # D
    .param p5, "x2"    # D
    .param p7, "y2"    # D
    .param p9, "x3"    # D
    .param p11, "y3"    # D

    .line 962
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 963
    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 964
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 965
    invoke-virtual {v0, p3, p4}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 966
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 967
    invoke-virtual {v0, p5, p6}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 968
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 969
    invoke-virtual {v0, p7, p8}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 970
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 971
    invoke-virtual {v0, p9, p10}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 972
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 973
    invoke-virtual {v0, p11, p12}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 974
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->c:[B

    .line 975
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 976
    return-object p0
.end method

.method public ellipse(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 13
    .param p1, "x1"    # D
    .param p3, "y1"    # D
    .param p5, "x2"    # D
    .param p7, "y2"    # D

    .line 1062
    const-wide/16 v9, 0x0

    const-wide v11, 0x4076800000000000L    # 360.0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->arc(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method public endLayer()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 3

    .line 1851
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->layerDepth:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1852
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->layerDepth:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1853
    .local v0, "num":I
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->layerDepth:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1857
    :goto_0
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "num":I
    .local v1, "num":I
    if-lez v0, :cond_0

    .line 1858
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->EMC:[B

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeNewLine()Ljava/io/OutputStream;

    move v0, v1

    goto :goto_0

    .line 1859
    :cond_0
    return-object p0

    .line 1855
    .end local v1    # "num":I
    :cond_1
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "Unbalanced layer operators."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endMarkedContent()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2

    .line 2388
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->mcDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->mcDepth:I

    if-ltz v0, :cond_0

    .line 2390
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->EMC:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 2391
    return-object p0

    .line 2389
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "Unbalanced begin/end marked content operators."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2

    .line 1291
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->n:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 1292
    return-object p0
.end method

.method public endText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2

    .line 427
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->ET:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 428
    return-object p0
.end method

.method public endVariableText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 446
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endMarkedContent()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method public eoClip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2

    .line 1323
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->WStar:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 1324
    return-object p0
.end method

.method public eoFill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2

    .line 1363
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fStar:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 1364
    return-object p0
.end method

.method public eoFillStroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2

    .line 1373
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->BStar:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 1374
    return-object p0
.end method

.method public fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2

    .line 1343
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->f:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 1344
    return-object p0
.end method

.method public fillStroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2

    .line 1353
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->B:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 1354
    return-object p0
.end method

.method public getContentStream()Lcom/itextpdf/kernel/pdf/PdfStream;
    .locals 1

    .line 2474
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    return-object v0
.end method

.method public getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    return-object v0
.end method

.method public getGraphicsState()Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    return-object v0
.end method

.method public getResources()Lcom/itextpdf/kernel/pdf/PdfResources;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->resources:Lcom/itextpdf/kernel/pdf/PdfResources;

    return-object v0
.end method

.method public lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2
    .param p1, "x"    # D
    .param p3, "y"    # D

    .line 942
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 943
    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 944
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 945
    invoke-virtual {v0, p3, p4}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->l:[B

    .line 946
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 947
    return-object p0
.end method

.method public moveText(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2
    .param p1, "x"    # D
    .param p3, "y"    # D

    .line 476
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 477
    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 478
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 479
    invoke-virtual {v0, p3, p4}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Td:[B

    .line 480
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 481
    return-object p0
.end method

.method public moveTextWithLeading(FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 515
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    neg-float v1, p2

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->setLeading(F)V

    .line 516
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 517
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 518
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 519
    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 520
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->TD:[B

    .line 521
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 522
    return-object p0
.end method

.method public moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2
    .param p1, "x"    # D
    .param p3, "y"    # D

    .line 925
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 926
    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 927
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 928
    invoke-virtual {v0, p3, p4}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->m:[B

    .line 929
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 930
    return-object p0
.end method

.method public newPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1282
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method public newlineShowText(FFLjava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2
    .param p1, "wordSpacing"    # F
    .param p2, "charSpacing"    # F
    .param p3, "text"    # Ljava/lang/String;

    .line 559
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 560
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 561
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 562
    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    .line 563
    invoke-direct {p0, p3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showTextInt(Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 565
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeByte(I)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 566
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeNewLine()Ljava/io/OutputStream;

    .line 569
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->setCharSpacing(F)V

    .line 570
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->setWordSpacing(F)V

    .line 571
    return-object p0
.end method

.method public newlineShowText(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 543
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showTextInt(Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 545
    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeByte(I)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 546
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeNewLine()Ljava/io/OutputStream;

    .line 547
    return-object p0
.end method

.method public newlineText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2

    .line 531
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->TStar:[B

    .line 532
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 533
    return-object p0
.end method

.method public openTag(Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2
    .param p1, "tag"    # Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;

    .line 2401
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->getRole()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2402
    return-object p0

    .line 2403
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->getRole()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->getProperties()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->beginMarkedContent(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method public openTag(Lcom/itextpdf/kernel/pdf/tagutils/TagReference;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 5
    .param p1, "tagReference"    # Lcom/itextpdf/kernel/pdf/tagutils/TagReference;

    .line 2417
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagReference;->getRole()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2418
    return-object p0

    .line 2419
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagReference;->getRole()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;-><init>(Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 2420
    .local v0, "tag":Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagReference;->getProperties()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->setProperties(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->MCID:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    .line 2421
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagReference;->createNextMcid()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->addProperty(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;

    .line 2422
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->openTag(Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    return-object v1
.end method

.method public paintShading(Lcom/itextpdf/kernel/pdf/colorspace/PdfShading;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 3
    .param p1, "shading"    # Lcom/itextpdf/kernel/pdf/colorspace/PdfShading;

    .line 1239
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->resources:Lcom/itextpdf/kernel/pdf/PdfResources;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfResources;->addShading(Lcom/itextpdf/kernel/pdf/colorspace/PdfShading;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    .line 1240
    .local v0, "shadingName":Lcom/itextpdf/kernel/pdf/PdfName;
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->sh:[B

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 1241
    return-object p0
.end method

.method public rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "width"    # D
    .param p7, "height"    # D

    .line 1158
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 1159
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 1160
    invoke-virtual {v0, p3, p4}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 1161
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 1162
    invoke-virtual {v0, p5, p6}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 1163
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 1164
    invoke-virtual {v0, p7, p8}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 1165
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->re:[B

    .line 1166
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 1167
    return-object p0
.end method

.method public rectangle(Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 10
    .param p1, "rectangle"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1177
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v0

    float-to-double v2, v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v0

    float-to-double v4, v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    float-to-double v6, v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    float-to-double v8, v0

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 1

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->gsStack:Ljava/util/Stack;

    .line 318
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    .line 319
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 320
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->resources:Lcom/itextpdf/kernel/pdf/PdfResources;

    .line 321
    return-void
.end method

.method public resetFillColorCmyk()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2

    .line 1798
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v0, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColorCmyk(FFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method public resetFillColorGray()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 1692
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColorGray(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method public resetFillColorRgb()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 1754
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->resetFillColorGray()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method public resetStrokeColorCmyk()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2

    .line 1807
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v0, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setStrokeColorCmyk(FFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method public resetStrokeColorGray()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 1701
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setStrokeColorGray(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method public resetStrokeColorRgb()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 1763
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->resetStrokeColorGray()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method public restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 3

    .line 342
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/pdf/IsoKey;->CANVAS_STACK:Lcom/itextpdf/kernel/pdf/IsoKey;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkIsoConformance(Ljava/lang/Object;Lcom/itextpdf/kernel/pdf/IsoKey;)V

    .line 343
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->gsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->gsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    .line 347
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Q:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 348
    return-object p0

    .line 344
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "Unbalanced save restore state operators."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public roundRectangle(DDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 30
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "width"    # D
    .param p7, "height"    # D
    .param p9, "radius"    # D

    .line 1191
    move-object/from16 v13, p0

    move-wide/from16 v0, p5

    move-wide/from16 v2, p7

    move-wide/from16 v4, p9

    const-wide/16 v6, 0x0

    cmpg-double v8, v0, v6

    if-gez v8, :cond_0

    .line 1192
    add-double v8, p1, v0

    .line 1193
    .end local p1    # "x":D
    .local v8, "x":D
    neg-double v0, v0

    move-wide/from16 v16, v0

    move-wide v14, v8

    .end local p5    # "width":D
    .local v0, "width":D
    goto :goto_0

    .line 1191
    .end local v0    # "width":D
    .end local v8    # "x":D
    .restart local p1    # "x":D
    .restart local p5    # "width":D
    :cond_0
    move-wide/from16 v14, p1

    move-wide/from16 v16, v0

    .line 1195
    .end local p1    # "x":D
    .end local p5    # "width":D
    .local v14, "x":D
    .local v16, "width":D
    :goto_0
    cmpg-double v0, v2, v6

    if-gez v0, :cond_1

    .line 1196
    add-double v0, p3, v2

    .line 1197
    .end local p3    # "y":D
    .local v0, "y":D
    neg-double v2, v2

    move-wide v11, v0

    move-wide/from16 v18, v2

    .end local p7    # "height":D
    .local v2, "height":D
    goto :goto_1

    .line 1195
    .end local v0    # "y":D
    .end local v2    # "height":D
    .restart local p3    # "y":D
    .restart local p7    # "height":D
    :cond_1
    move-wide/from16 v11, p3

    move-wide/from16 v18, v2

    .line 1199
    .end local p3    # "y":D
    .end local p7    # "height":D
    .local v11, "y":D
    .local v18, "height":D
    :goto_1
    cmpg-double v0, v4, v6

    if-gez v0, :cond_2

    .line 1200
    neg-double v0, v4

    move-wide/from16 v20, v0

    .end local p9    # "radius":D
    .local v0, "radius":D
    goto :goto_2

    .line 1199
    .end local v0    # "radius":D
    .restart local p9    # "radius":D
    :cond_2
    move-wide/from16 v20, v4

    .line 1201
    .end local p9    # "radius":D
    .local v20, "radius":D
    :goto_2
    const-wide v22, 0x3fdca71de0000000L    # 0.44769999384880066

    .line 1202
    .local v22, "curv":D
    add-double v0, v14, v20

    invoke-virtual {v13, v0, v1, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 1203
    add-double v0, v14, v16

    sub-double v0, v0, v20

    invoke-virtual {v13, v0, v1, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 1204
    add-double v0, v14, v16

    const-wide v24, 0x3fdca71de0000000L    # 0.44769999384880066

    mul-double v2, v20, v24

    sub-double v1, v0, v2

    add-double v5, v14, v16

    mul-double v3, v20, v24

    add-double v7, v11, v3

    add-double v9, v14, v16

    add-double v26, v11, v20

    move-object/from16 v0, p0

    move-wide v3, v11

    move-wide/from16 v28, v11

    .end local v11    # "y":D
    .local v28, "y":D
    move-wide/from16 v11, v26

    invoke-virtual/range {v0 .. v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 1205
    add-double v0, v14, v16

    add-double v11, v28, v18

    sub-double v11, v11, v20

    invoke-virtual {v13, v0, v1, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 1206
    add-double v1, v14, v16

    add-double v11, v28, v18

    mul-double v3, v20, v24

    sub-double v3, v11, v3

    add-double v5, v14, v16

    mul-double v7, v20, v24

    sub-double/2addr v5, v7

    add-double v7, v28, v18

    add-double v9, v14, v16

    sub-double v9, v9, v20

    add-double v11, v28, v18

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 1207
    add-double v0, v14, v20

    add-double v11, v28, v18

    invoke-virtual {v13, v0, v1, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 1208
    mul-double v0, v20, v24

    add-double v1, v14, v0

    add-double v3, v28, v18

    add-double v11, v28, v18

    mul-double v5, v20, v24

    sub-double v7, v11, v5

    add-double v11, v28, v18

    sub-double v11, v11, v20

    move-object/from16 v0, p0

    move-wide v5, v14

    move-wide v9, v14

    invoke-virtual/range {v0 .. v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 1209
    add-double v11, v28, v20

    invoke-virtual {v13, v14, v15, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 1210
    mul-double v0, v20, v24

    add-double v3, v28, v0

    mul-double v24, v24, v20

    add-double v5, v14, v24

    add-double v9, v14, v20

    move-object/from16 v0, p0

    move-wide v1, v14

    move-wide/from16 v7, v28

    move-wide/from16 v11, v28

    invoke-virtual/range {v0 .. v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 1211
    return-object v13
.end method

.method public saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 3

    .line 329
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    const/16 v1, 0x71

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/pdf/IsoKey;->CANVAS_STACK:Lcom/itextpdf/kernel/pdf/IsoKey;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkIsoConformance(Ljava/lang/Object;Lcom/itextpdf/kernel/pdf/IsoKey;)V

    .line 330
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->gsStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;-><init>(Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    .line 332
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->q:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 333
    return-object p0
.end method

.method public setCharacterSpacing(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2
    .param p1, "charSpacing"    # F

    .line 626
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->setCharSpacing(F)V

    .line 627
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 628
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Tc:[B

    .line 629
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 630
    return-object p0
.end method

.method public setColor(Lcom/itextpdf/kernel/colors/Color;Z)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 3
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/Color;
    .param p2, "fill"    # Z

    .line 1599
    instance-of v0, p1, Lcom/itextpdf/kernel/colors/PatternColor;

    if-eqz v0, :cond_0

    .line 1600
    invoke-virtual {p1}, Lcom/itextpdf/kernel/colors/Color;->getColorSpace()Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/colors/Color;->getColorValue()[F

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lcom/itextpdf/kernel/colors/PatternColor;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/colors/PatternColor;->getPattern()Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setColor(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[FLcom/itextpdf/kernel/pdf/colorspace/PdfPattern;Z)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0

    .line 1602
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/colors/Color;->getColorSpace()Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/colors/Color;->getColorValue()[F

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setColor(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[FZ)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method public setColor(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[FLcom/itextpdf/kernel/pdf/colorspace/PdfPattern;Z)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 8
    .param p1, "colorSpace"    # Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;
    .param p2, "colorValue"    # [F
    .param p3, "pattern"    # Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;
    .param p4, "fill"    # Z

    .line 1628
    const/4 v0, 0x0

    .line 1629
    .local v0, "setColorValueOnly":Z
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    if-eqz p4, :cond_0

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFillColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getStrokeColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v1

    .line 1630
    .local v1, "oldColor":Lcom/itextpdf/kernel/colors/Color;
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->createColor(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[FLcom/itextpdf/kernel/pdf/colorspace/PdfPattern;)Lcom/itextpdf/kernel/colors/Color;

    move-result-object v2

    .line 1631
    .local v2, "newColor":Lcom/itextpdf/kernel/colors/Color;
    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/colors/Color;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1632
    return-object p0

    .line 1634
    :cond_1
    if-eqz p4, :cond_2

    .line 1635
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)V

    goto :goto_1

    .line 1637
    :cond_2
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->setStrokeColor(Lcom/itextpdf/kernel/colors/Color;)V

    .line 1639
    :goto_1
    invoke-virtual {v1}, Lcom/itextpdf/kernel/colors/Color;->getColorSpace()Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1640
    const/4 v0, 0x1

    .line 1643
    :cond_3
    instance-of v3, p1, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Gray;

    if-eqz v3, :cond_5

    .line 1644
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloats([F)Ljava/io/OutputStream;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    if-eqz p4, :cond_4

    sget-object v4, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->g:[B

    goto :goto_2

    :cond_4
    sget-object v4, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->G:[B

    :goto_2
    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    goto/16 :goto_b

    .line 1645
    :cond_5
    instance-of v3, p1, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Rgb;

    if-eqz v3, :cond_7

    .line 1646
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloats([F)Ljava/io/OutputStream;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    if-eqz p4, :cond_6

    sget-object v4, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rg:[B

    goto :goto_3

    :cond_6
    sget-object v4, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->RG:[B

    :goto_3
    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    goto/16 :goto_b

    .line 1647
    :cond_7
    instance-of v3, p1, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Cmyk;

    if-eqz v3, :cond_9

    .line 1648
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloats([F)Ljava/io/OutputStream;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    if-eqz p4, :cond_8

    sget-object v4, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->k:[B

    goto :goto_4

    :cond_8
    sget-object v4, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->K:[B

    :goto_4
    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    goto/16 :goto_b

    .line 1649
    :cond_9
    instance-of v3, p1, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$UncoloredTilingPattern;

    if-eqz v3, :cond_c

    .line 1650
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v3

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->resources:Lcom/itextpdf/kernel/pdf/PdfResources;

    invoke-virtual {v4, p1}, Lcom/itextpdf/kernel/pdf/PdfResources;->addColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    if-eqz p4, :cond_a

    sget-object v4, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->cs:[B

    goto :goto_5

    :cond_a
    sget-object v4, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->CS:[B

    :goto_5
    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 1651
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeNewLine()Ljava/io/OutputStream;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v3, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloats([F)Ljava/io/OutputStream;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->resources:Lcom/itextpdf/kernel/pdf/PdfResources;

    invoke-virtual {v4, p3}, Lcom/itextpdf/kernel/pdf/PdfResources;->addPattern(Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    if-eqz p4, :cond_b

    sget-object v4, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->scn:[B

    goto :goto_6

    :cond_b
    sget-object v4, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->SCN:[B

    :goto_6
    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    goto/16 :goto_b

    .line 1652
    :cond_c
    instance-of v3, p1, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Pattern;

    if-eqz v3, :cond_f

    .line 1653
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v3

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Pattern:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    if-eqz p4, :cond_d

    sget-object v4, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->cs:[B

    goto :goto_7

    :cond_d
    sget-object v4, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->CS:[B

    :goto_7
    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 1654
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeNewLine()Ljava/io/OutputStream;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->resources:Lcom/itextpdf/kernel/pdf/PdfResources;

    invoke-virtual {v4, p3}, Lcom/itextpdf/kernel/pdf/PdfResources;->addPattern(Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    if-eqz p4, :cond_e

    sget-object v4, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->scn:[B

    goto :goto_8

    :cond_e
    sget-object v4, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->SCN:[B

    :goto_8
    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    goto :goto_b

    .line 1655
    :cond_f
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfObject;->isIndirect()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1656
    if-nez v0, :cond_11

    .line 1657
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->resources:Lcom/itextpdf/kernel/pdf/PdfResources;

    invoke-virtual {v3, p1}, Lcom/itextpdf/kernel/pdf/PdfResources;->addColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v3

    .line 1658
    .local v3, "name":Lcom/itextpdf/kernel/pdf/PdfName;
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    if-eqz p4, :cond_10

    sget-object v5, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->cs:[B

    goto :goto_9

    :cond_10
    sget-object v5, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->CS:[B

    :goto_9
    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 1660
    .end local v3    # "name":Lcom/itextpdf/kernel/pdf/PdfName;
    :cond_11
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloats([F)Ljava/io/OutputStream;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    if-eqz p4, :cond_12

    sget-object v4, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->scn:[B

    goto :goto_a

    :cond_12
    sget-object v4, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->SCN:[B

    :goto_a
    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 1662
    :cond_13
    :goto_b
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    if-eqz p4, :cond_14

    sget-object v5, Lcom/itextpdf/kernel/pdf/IsoKey;->FILL_COLOR:Lcom/itextpdf/kernel/pdf/IsoKey;

    goto :goto_c

    :cond_14
    sget-object v5, Lcom/itextpdf/kernel/pdf/IsoKey;->STROKE_COLOR:Lcom/itextpdf/kernel/pdf/IsoKey;

    :goto_c
    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->resources:Lcom/itextpdf/kernel/pdf/PdfResources;

    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkIsoConformance(Ljava/lang/Object;Lcom/itextpdf/kernel/pdf/IsoKey;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 1663
    return-object p0
.end method

.method public setColor(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[FZ)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1
    .param p1, "colorSpace"    # Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;
    .param p2, "colorValue"    # [F
    .param p3, "fill"    # Z

    .line 1615
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setColor(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[FLcom/itextpdf/kernel/pdf/colorspace/PdfPattern;Z)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method public setExtGState(Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 6
    .param p1, "extGState"    # Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;

    .line 2332
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->isFlushed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2333
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0, p1, v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->updateFromExtGState(Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 2334
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->resources:Lcom/itextpdf/kernel/pdf/PdfResources;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfResources;->addExtGState(Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    .line 2335
    .local v0, "name":Lcom/itextpdf/kernel/pdf/PdfName;
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->gs:[B

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 2336
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    sget-object v3, Lcom/itextpdf/kernel/pdf/IsoKey;->EXTENDED_GRAPHICS_STATE:Lcom/itextpdf/kernel/pdf/IsoKey;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkIsoConformance(Ljava/lang/Object;Lcom/itextpdf/kernel/pdf/IsoKey;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 2337
    return-object p0
.end method

.method public setExtGState(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;
    .locals 1
    .param p1, "extGState"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 2347
    new-instance v0, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 2348
    .local v0, "egs":Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setExtGState(Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2349
    return-object v0
.end method

.method public setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/Color;

    .line 1578
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setColor(Lcom/itextpdf/kernel/colors/Color;Z)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method public setFillColorCmyk(FFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 4
    .param p1, "c"    # F
    .param p2, "m"    # F
    .param p3, "y"    # F
    .param p4, "k"    # F

    .line 1776
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->cmyk:Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Cmyk;

    const/4 v1, 0x4

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    const/4 v3, 0x2

    aput p3, v1, v3

    const/4 v3, 0x3

    aput p4, v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setColor(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[FZ)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method public setFillColorGray(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 4
    .param p1, "g"    # F

    .line 1673
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->gray:Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Gray;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-virtual {p0, v0, v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setColor(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[FZ)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method public setFillColorRgb(FFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 4
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F

    .line 1713
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rgb:Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Rgb;

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    const/4 v3, 0x2

    aput p3, v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setColor(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[FZ)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method public setFillColorShading(Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Shading;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 3
    .param p1, "shading"    # Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Shading;

    .line 1735
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->pattern:Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Pattern;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setColor(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[FLcom/itextpdf/kernel/pdf/colorspace/PdfPattern;Z)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method public setFlatnessTolerance(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2
    .param p1, "flatnessTolerance"    # F

    .line 1562
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFlatnessTolerance()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 1563
    return-object p0

    .line 1564
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->setFlatnessTolerance(F)V

    .line 1565
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 1566
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->i:[B

    .line 1567
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 1568
    return-object p0
.end method

.method public setFontAndSize(Lcom/itextpdf/kernel/font/PdfFont;F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 3
    .param p1, "font"    # Lcom/itextpdf/kernel/font/PdfFont;
    .param p2, "size"    # F

    .line 457
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->setFontSize(F)V

    .line 458
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->resources:Lcom/itextpdf/kernel/pdf/PdfResources;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/kernel/pdf/PdfResources;->addFont(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    .line 459
    .local v0, "fontName":Lcom/itextpdf/kernel/pdf/PdfName;
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->setFont(Lcom/itextpdf/kernel/font/PdfFont;)V

    .line 460
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v1

    .line 461
    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v1

    .line 462
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 463
    invoke-virtual {v1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Tf:[B

    .line 464
    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 465
    return-object p0
.end method

.method public setHorizontalScaling(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2
    .param p1, "scale"    # F

    .line 640
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->setHorizontalScaling(F)V

    .line 641
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 642
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 643
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Tz:[B

    .line 644
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 645
    return-object p0
.end method

.method public setLeading(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2
    .param p1, "leading"    # F

    .line 495
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->setLeading(F)V

    .line 496
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 497
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 498
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->TL:[B

    .line 499
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 501
    return-object p0
.end method

.method public setLineCapStyle(I)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2
    .param p1, "lineCapStyle"    # I

    .line 1403
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getLineCapStyle()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1404
    return-object p0

    .line 1405
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->setLineCapStyle(I)V

    .line 1406
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 1407
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeInteger(I)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->J:[B

    .line 1408
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 1409
    return-object p0
.end method

.method public setLineDash(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2
    .param p1, "phase"    # F

    .line 1459
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getDashPatternArray(F)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->setDashPattern(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 1460
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeByte(I)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeByte(I)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 1461
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->d:[B

    .line 1462
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 1463
    return-object p0
.end method

.method public setLineDash(FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 3
    .param p1, "unitsOn"    # F
    .param p2, "phase"    # F

    .line 1479
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-direct {p0, v1, p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getDashPatternArray([FF)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->setDashPattern(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 1480
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeByte(I)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeByte(I)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 1481
    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->d:[B

    .line 1482
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 1484
    return-object p0
.end method

.method public setLineDash(FFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 3
    .param p1, "unitsOn"    # F
    .param p2, "unitsOff"    # F
    .param p3, "phase"    # F

    .line 1501
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-direct {p0, v1, p3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getDashPatternArray([FF)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->setDashPattern(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 1502
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeByte(I)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 1503
    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeByte(I)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 1504
    invoke-virtual {v0, p3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->d:[B

    .line 1505
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 1506
    return-object p0
.end method

.method public setLineDash([FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 3
    .param p1, "array"    # [F
    .param p2, "phase"    # F

    .line 1522
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getDashPatternArray([FF)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->setDashPattern(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 1523
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 1524
    .local v0, "out":Lcom/itextpdf/kernel/pdf/PdfOutputStream;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeByte(I)Ljava/io/OutputStream;

    .line 1525
    const/4 v1, 0x0

    .local v1, "iter":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 1526
    aget v2, p1, v1

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    .line 1527
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 1528
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    .line 1525
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1530
    .end local v1    # "iter":I
    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeByte(I)Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->d:[B

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 1531
    return-object p0
.end method

.method public setLineJoinStyle(I)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2
    .param p1, "lineJoinStyle"    # I

    .line 1421
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getLineJoinStyle()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1422
    return-object p0

    .line 1423
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->setLineJoinStyle(I)V

    .line 1424
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 1425
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeInteger(I)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->j:[B

    .line 1426
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 1427
    return-object p0
.end method

.method public setLineWidth(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2
    .param p1, "lineWidth"    # F

    .line 1384
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getLineWidth()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 1385
    return-object p0

    .line 1387
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->setLineWidth(F)V

    .line 1388
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 1389
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->w:[B

    .line 1390
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 1391
    return-object p0
.end method

.method public setMiterLimit(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2
    .param p1, "miterLimit"    # F

    .line 1438
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getMiterLimit()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 1439
    return-object p0

    .line 1440
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->setMiterLimit(F)V

    .line 1441
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 1442
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->M:[B

    .line 1443
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 1444
    return-object p0
.end method

.method public setRenderingIntent(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2
    .param p1, "renderingIntent"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 1542
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    sget-object v1, Lcom/itextpdf/kernel/pdf/IsoKey;->RENDERING_INTENT:Lcom/itextpdf/kernel/pdf/IsoKey;

    invoke-virtual {v0, p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkIsoConformance(Ljava/lang/Object;Lcom/itextpdf/kernel/pdf/IsoKey;)V

    .line 1543
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getRenderingIntent()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1544
    return-object p0

    .line 1545
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->setRenderingIntent(Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 1546
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 1547
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->ri:[B

    .line 1548
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 1549
    return-object p0
.end method

.method public setStrokeColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/Color;

    .line 1588
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setColor(Lcom/itextpdf/kernel/colors/Color;Z)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method public setStrokeColorCmyk(FFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 4
    .param p1, "c"    # F
    .param p2, "m"    # F
    .param p3, "y"    # F
    .param p4, "k"    # F

    .line 1789
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->cmyk:Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Cmyk;

    const/4 v1, 0x4

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v3, 0x1

    aput p2, v1, v3

    const/4 v3, 0x2

    aput p3, v1, v3

    const/4 v3, 0x3

    aput p4, v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setColor(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[FZ)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method public setStrokeColorGray(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 3
    .param p1, "g"    # F

    .line 1683
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->gray:Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Gray;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setColor(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[FZ)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method public setStrokeColorRgb(FFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 4
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F

    .line 1725
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rgb:Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Rgb;

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v3, 0x1

    aput p2, v1, v3

    const/4 v3, 0x2

    aput p3, v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setColor(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[FZ)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method public setStrokeColorShading(Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Shading;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 3
    .param p1, "shading"    # Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Shading;

    .line 1745
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->pattern:Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Pattern;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setColor(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[FLcom/itextpdf/kernel/pdf/colorspace/PdfPattern;Z)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method public setTextMatrix(FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 696
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p0

    move v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method public setTextMatrix(FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2
    .param p1, "a"    # F
    .param p2, "b"    # F
    .param p3, "c"    # F
    .param p4, "d"    # F
    .param p5, "x"    # F
    .param p6, "y"    # F

    .line 660
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 661
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 662
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 663
    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 664
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 665
    invoke-virtual {v0, p3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 666
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 667
    invoke-virtual {v0, p4}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 668
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 669
    invoke-virtual {v0, p5}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 670
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 671
    invoke-virtual {v0, p6}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Tm:[B

    .line 672
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 673
    return-object p0
.end method

.method public setTextMatrix(Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 9
    .param p1, "transform"    # Lcom/itextpdf/kernel/geom/AffineTransform;

    .line 683
    const/4 v0, 0x6

    new-array v0, v0, [F

    .line 684
    .local v0, "matrix":[F
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/geom/AffineTransform;->getMatrix([F)V

    .line 685
    const/4 v1, 0x0

    aget v3, v0, v1

    const/4 v1, 0x1

    aget v4, v0, v1

    const/4 v1, 0x2

    aget v5, v0, v1

    const/4 v1, 0x3

    aget v6, v0, v1

    const/4 v1, 0x4

    aget v7, v0, v1

    const/4 v1, 0x5

    aget v8, v0, v1

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    return-object v1
.end method

.method public setTextRenderingMode(I)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2
    .param p1, "textRenderingMode"    # I

    .line 581
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->setTextRenderingMode(I)V

    .line 582
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 583
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeInteger(I)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Tr:[B

    .line 584
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 585
    return-object p0
.end method

.method public setTextRise(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2
    .param p1, "textRise"    # F

    .line 598
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->setTextRise(F)V

    .line 599
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 600
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Ts:[B

    .line 601
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 602
    return-object p0
.end method

.method public setWordSpacing(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2
    .param p1, "wordSpacing"    # F

    .line 612
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->setWordSpacing(F)V

    .line 613
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 614
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Tw:[B

    .line 615
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 616
    return-object p0
.end method

.method public showText(Lcom/itextpdf/io/font/otf/GlyphLine;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1
    .param p1, "text"    # Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 718
    new-instance v0, Lcom/itextpdf/io/font/otf/ActualTextIterator;

    invoke-direct {v0, p1}, Lcom/itextpdf/io/font/otf/ActualTextIterator;-><init>(Lcom/itextpdf/io/font/otf/GlyphLine;)V

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showText(Lcom/itextpdf/io/font/otf/GlyphLine;Ljava/util/Iterator;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method public showText(Lcom/itextpdf/io/font/otf/GlyphLine;Ljava/util/Iterator;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 20
    .param p1, "text"    # Lcom/itextpdf/io/font/otf/GlyphLine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/io/font/otf/GlyphLine;",
            "Ljava/util/Iterator<",
            "Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;",
            ">;)",
            "Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;"
        }
    .end annotation

    .line 730
    .local p2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    sget-object v4, Lcom/itextpdf/kernel/pdf/IsoKey;->FONT_GLYPHS:Lcom/itextpdf/kernel/pdf/IsoKey;

    iget-object v5, v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6, v5}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkIsoConformance(Ljava/lang/Object;Lcom/itextpdf/kernel/pdf/IsoKey;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 732
    iget-object v2, v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v2

    move-object v3, v2

    .local v3, "font":Lcom/itextpdf/kernel/font/PdfFont;
    if-eqz v2, :cond_12

    .line 735
    iget-object v2, v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFontSize()F

    move-result v2

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v2, v4

    .line 736
    .local v2, "fontSize":F
    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getCharSpacing()F

    move-result v4

    .line 737
    .local v4, "charSpacing":F
    iget-object v5, v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getHorizontalScaling()F

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    .line 738
    .local v5, "scaling":F
    invoke-static/range {p2 .. p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->iteratorToList(Ljava/util/Iterator;)Ljava/util/List;

    move-result-object v6

    .line 739
    .local v6, "glyphLineParts":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;>;"
    const/4 v7, 0x0

    .local v7, "partIndex":I
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_11

    .line 740
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;

    .line 741
    .local v8, "glyphLinePart":Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;
    iget-object v9, v8, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->actualText:Ljava/lang/String;

    const/4 v10, 0x1

    if-eqz v9, :cond_0

    .line 742
    new-instance v9, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 743
    .local v9, "properties":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v11, Lcom/itextpdf/kernel/pdf/PdfName;->ActualText:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v12, Lcom/itextpdf/kernel/pdf/PdfString;

    iget-object v13, v8, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->actualText:Ljava/lang/String;

    const-string v14, "UnicodeBig"

    invoke-direct {v12, v13, v14}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Lcom/itextpdf/kernel/pdf/PdfString;->setHexWriting(Z)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 744
    sget-object v11, Lcom/itextpdf/kernel/pdf/PdfName;->Span:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v11, v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->beginMarkedContent(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .end local v9    # "properties":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    goto :goto_1

    .line 745
    :cond_0
    iget-boolean v9, v8, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->reversed:Z

    if-eqz v9, :cond_1

    .line 746
    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->ReversedChars:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->beginMarkedContent(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_2

    .line 745
    :cond_1
    :goto_1
    nop

    .line 748
    :goto_2
    iget v9, v8, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->start:I

    .line 749
    .local v9, "sub":I
    iget v11, v8, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->start:I

    .local v11, "i":I
    :goto_3
    iget v12, v8, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->end:I

    const/4 v13, 0x0

    if-ge v11, v12, :cond_c

    .line 750
    invoke-virtual {v1, v11}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v12

    .line 751
    .local v12, "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    invoke-virtual {v12}, Lcom/itextpdf/io/font/otf/Glyph;->hasOffsets()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 752
    add-int/lit8 v14, v11, -0x1

    sub-int/2addr v14, v9

    if-ltz v14, :cond_2

    .line 753
    add-int/lit8 v14, v11, -0x1

    iget-object v15, v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v15}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v15

    invoke-virtual {v3, v1, v9, v14, v15}, Lcom/itextpdf/kernel/font/PdfFont;->writeText(Lcom/itextpdf/io/font/otf/GlyphLine;IILcom/itextpdf/kernel/pdf/PdfOutputStream;)V

    .line 754
    iget-object v14, v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v14}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v14

    sget-object v15, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Tj:[B

    invoke-virtual {v14, v15}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 755
    iget-object v14, v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v14}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v14

    add-int/lit8 v15, v11, -0x1

    .line 756
    invoke-direct {v0, v1, v9, v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getSubrangeWidth(Lcom/itextpdf/io/font/otf/GlyphLine;II)F

    move-result v15

    invoke-virtual {v14, v15, v10}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(FZ)Ljava/io/OutputStream;

    move-result-object v14

    check-cast v14, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 757
    invoke-virtual {v14}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v14

    check-cast v14, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 758
    invoke-virtual {v14, v13}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object v13

    check-cast v13, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 759
    invoke-virtual {v13}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v13

    check-cast v13, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v14, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Td:[B

    .line 760
    invoke-virtual {v13, v14}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 762
    :cond_2
    const/high16 v13, 0x7fc00000    # Float.NaN

    .line 763
    .local v13, "xPlacement":F
    const/high16 v14, 0x7fc00000    # Float.NaN

    .line 764
    .local v14, "yPlacement":F
    invoke-virtual {v12}, Lcom/itextpdf/io/font/otf/Glyph;->hasPlacement()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 767
    const/4 v15, 0x0

    .line 768
    .local v15, "xPlacementAddition":F
    move/from16 v16, v11

    .line 769
    .local v16, "currentGlyphIndex":I
    invoke-virtual {v1, v11}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v17

    move/from16 v10, v16

    .line 771
    .end local v16    # "currentGlyphIndex":I
    .local v10, "currentGlyphIndex":I
    .local v17, "currentGlyph":Lcom/itextpdf/io/font/otf/Glyph;
    :goto_4
    if-eqz v17, :cond_4

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/io/font/otf/Glyph;->getAnchorDelta()S

    move-result v18

    if-eqz v18, :cond_4

    .line 772
    move/from16 v18, v13

    .end local v13    # "xPlacement":F
    .local v18, "xPlacement":F
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/io/font/otf/Glyph;->getXPlacement()S

    move-result v13

    int-to-float v13, v13

    add-float/2addr v15, v13

    .line 773
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/io/font/otf/Glyph;->getAnchorDelta()S

    move-result v13

    if-nez v13, :cond_3

    .line 774
    goto :goto_5

    .line 776
    :cond_3
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/io/font/otf/Glyph;->getAnchorDelta()S

    move-result v13

    add-int/2addr v10, v13

    .line 777
    invoke-virtual {v1, v10}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v17

    move/from16 v13, v18

    goto :goto_4

    .line 771
    .end local v18    # "xPlacement":F
    .restart local v13    # "xPlacement":F
    :cond_4
    move/from16 v18, v13

    .line 780
    .end local v13    # "xPlacement":F
    .restart local v18    # "xPlacement":F
    :goto_5
    invoke-direct {v0, v1, v10, v11}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getSubrangeWidth(Lcom/itextpdf/io/font/otf/GlyphLine;II)F

    move-result v13

    neg-float v13, v13

    mul-float v19, v15, v2

    mul-float v19, v19, v5

    add-float v13, v13, v19

    .line 784
    .end local v10    # "currentGlyphIndex":I
    .end local v15    # "xPlacementAddition":F
    .end local v17    # "currentGlyph":Lcom/itextpdf/io/font/otf/Glyph;
    .end local v18    # "xPlacement":F
    .restart local v13    # "xPlacement":F
    const/4 v10, 0x0

    .line 785
    .local v10, "yPlacementAddition":F
    move v15, v11

    .line 786
    .local v15, "currentGlyphIndex":I
    invoke-virtual {v1, v11}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v17

    .line 787
    .restart local v17    # "currentGlyph":Lcom/itextpdf/io/font/otf/Glyph;
    :goto_6
    if-eqz v17, :cond_6

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/io/font/otf/Glyph;->getYPlacement()S

    move-result v18

    if-eqz v18, :cond_6

    .line 788
    move/from16 v19, v14

    .end local v14    # "yPlacement":F
    .local v19, "yPlacement":F
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/io/font/otf/Glyph;->getYPlacement()S

    move-result v14

    int-to-float v14, v14

    add-float/2addr v10, v14

    .line 789
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/io/font/otf/Glyph;->getAnchorDelta()S

    move-result v14

    if-nez v14, :cond_5

    .line 790
    goto :goto_7

    .line 792
    :cond_5
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/io/font/otf/Glyph;->getAnchorDelta()S

    move-result v14

    add-int/2addr v15, v14

    .line 793
    invoke-virtual {v1, v15}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v17

    move/from16 v14, v19

    goto :goto_6

    .line 787
    .end local v19    # "yPlacement":F
    .restart local v14    # "yPlacement":F
    :cond_6
    move/from16 v19, v14

    .line 796
    .end local v14    # "yPlacement":F
    .restart local v19    # "yPlacement":F
    :goto_7
    invoke-direct {v0, v1, v15, v11}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getSubrangeYDelta(Lcom/itextpdf/io/font/otf/GlyphLine;II)F

    move-result v14

    neg-float v14, v14

    mul-float v18, v10, v2

    add-float v14, v14, v18

    .line 799
    .end local v10    # "yPlacementAddition":F
    .end local v15    # "currentGlyphIndex":I
    .end local v17    # "currentGlyph":Lcom/itextpdf/io/font/otf/Glyph;
    .end local v19    # "yPlacement":F
    .restart local v14    # "yPlacement":F
    iget-object v10, v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v10

    .line 800
    const/4 v15, 0x1

    invoke-virtual {v10, v13, v15}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(FZ)Ljava/io/OutputStream;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 801
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 802
    invoke-virtual {v10, v14, v15}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(FZ)Ljava/io/OutputStream;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 803
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v15, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Td:[B

    .line 804
    invoke-virtual {v10, v15}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    goto :goto_8

    .line 764
    :cond_7
    move/from16 v18, v13

    move/from16 v19, v14

    .line 806
    :goto_8
    iget-object v10, v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v10

    invoke-virtual {v3, v1, v11, v11, v10}, Lcom/itextpdf/kernel/font/PdfFont;->writeText(Lcom/itextpdf/io/font/otf/GlyphLine;IILcom/itextpdf/kernel/pdf/PdfOutputStream;)V

    .line 807
    iget-object v10, v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v10

    sget-object v15, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Tj:[B

    invoke-virtual {v10, v15}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 808
    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-nez v10, :cond_8

    .line 809
    iget-object v10, v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v10

    neg-float v15, v13

    .line 810
    move/from16 v17, v13

    const/4 v13, 0x1

    .end local v13    # "xPlacement":F
    .local v17, "xPlacement":F
    invoke-virtual {v10, v15, v13}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(FZ)Ljava/io/OutputStream;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 811
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    neg-float v15, v14

    .line 812
    invoke-virtual {v10, v15, v13}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(FZ)Ljava/io/OutputStream;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 813
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v13, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Td:[B

    .line 814
    invoke-virtual {v10, v13}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    goto :goto_9

    .line 808
    .end local v17    # "xPlacement":F
    .restart local v13    # "xPlacement":F
    :cond_8
    move/from16 v17, v13

    .line 817
    .end local v13    # "xPlacement":F
    .restart local v17    # "xPlacement":F
    :goto_9
    invoke-virtual {v12}, Lcom/itextpdf/io/font/otf/Glyph;->hasAdvance()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 818
    iget-object v10, v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v10

    .line 820
    invoke-virtual {v12}, Lcom/itextpdf/io/font/otf/Glyph;->hasPlacement()Z

    move-result v13

    if-eqz v13, :cond_9

    const/4 v13, 0x0

    goto :goto_a

    :cond_9
    invoke-virtual {v12}, Lcom/itextpdf/io/font/otf/Glyph;->getWidth()I

    move-result v13

    :goto_a
    invoke-virtual {v12}, Lcom/itextpdf/io/font/otf/Glyph;->getXAdvance()S

    move-result v15

    add-int/2addr v13, v15

    int-to-float v13, v13

    mul-float/2addr v13, v2

    add-float/2addr v13, v4

    invoke-direct {v0, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getWordSpacingAddition(Lcom/itextpdf/io/font/otf/Glyph;)F

    move-result v15

    add-float/2addr v13, v15

    mul-float/2addr v13, v5

    const/4 v15, 0x1

    invoke-virtual {v10, v13, v15}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(FZ)Ljava/io/OutputStream;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 821
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 822
    invoke-virtual {v12}, Lcom/itextpdf/io/font/otf/Glyph;->getYAdvance()S

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v2

    invoke-virtual {v10, v13, v15}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(FZ)Ljava/io/OutputStream;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 823
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v13, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Td:[B

    .line 824
    invoke-virtual {v10, v13}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 826
    :cond_a
    add-int/lit8 v9, v11, 0x1

    .line 749
    .end local v12    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    .end local v14    # "yPlacement":F
    .end local v17    # "xPlacement":F
    :cond_b
    add-int/lit8 v11, v11, 0x1

    const/4 v10, 0x1

    goto/16 :goto_3

    .line 829
    .end local v11    # "i":I
    :cond_c
    iget v10, v8, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->end:I

    sub-int/2addr v10, v9

    if-lez v10, :cond_d

    .line 830
    iget v10, v8, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->end:I

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    iget-object v11, v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v11

    invoke-virtual {v3, v1, v9, v10, v11}, Lcom/itextpdf/kernel/font/PdfFont;->writeText(Lcom/itextpdf/io/font/otf/GlyphLine;IILcom/itextpdf/kernel/pdf/PdfOutputStream;)V

    .line 831
    iget-object v10, v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v10

    sget-object v11, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Tj:[B

    invoke-virtual {v10, v11}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 833
    :cond_d
    iget-object v10, v8, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->actualText:Ljava/lang/String;

    if-eqz v10, :cond_e

    .line 834
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endMarkedContent()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_b

    .line 835
    :cond_e
    iget-boolean v10, v8, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->reversed:Z

    if-eqz v10, :cond_f

    .line 836
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endMarkedContent()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 838
    :cond_f
    :goto_b
    iget v10, v8, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->end:I

    if-le v10, v9, :cond_10

    add-int/lit8 v10, v7, 0x1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_10

    .line 839
    iget-object v10, v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v10

    iget v11, v8, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->end:I

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    .line 840
    invoke-direct {v0, v1, v9, v11}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getSubrangeWidth(Lcom/itextpdf/io/font/otf/GlyphLine;II)F

    move-result v11

    invoke-virtual {v10, v11, v12}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(FZ)Ljava/io/OutputStream;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 841
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 842
    invoke-virtual {v10, v13}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 843
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v11, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Td:[B

    .line 844
    invoke-virtual {v10, v11}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 739
    .end local v8    # "glyphLinePart":Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;
    .end local v9    # "sub":I
    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 847
    .end local v7    # "partIndex":I
    :cond_11
    return-object v0

    .line 733
    .end local v2    # "fontSize":F
    .end local v4    # "charSpacing":F
    .end local v5    # "scaling":F
    .end local v6    # "glyphLineParts":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;>;"
    :cond_12
    new-instance v2, Lcom/itextpdf/kernel/PdfException;

    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    const-string v5, "Font and size must be set before writing any text."

    invoke-direct {v2, v5, v4}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw v2
.end method

.method public showText(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 5
    .param p1, "textArray"    # Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 901
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    sget-object v2, Lcom/itextpdf/kernel/pdf/IsoKey;->FONT_GLYPHS:Lcom/itextpdf/kernel/pdf/IsoKey;

    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkIsoConformance(Ljava/lang/Object;Lcom/itextpdf/kernel/pdf/IsoKey;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 902
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 904
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    const-string v1, "["

    invoke-static {v1}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 905
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 906
    .local v1, "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isString()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 907
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfString;->getValueBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/itextpdf/io/util/StreamUtil;->writeEscapedString(Ljava/io/OutputStream;[B)V

    goto :goto_1

    .line 908
    :cond_0
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isNumber()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 909
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    .line 911
    .end local v1    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_1
    :goto_1
    goto :goto_0

    .line 912
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    const-string v1, "]"

    invoke-static {v1}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 913
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->TJ:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 914
    return-object p0

    .line 903
    :cond_3
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    const-string v2, "Font and size must be set before writing any text."

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
.end method

.method public showText(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 706
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showTextInt(Ljava/lang/String;)V

    .line 707
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Tj:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 708
    return-object p0
.end method

.method public stroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2

    .line 1301
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->S:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 1302
    return-object p0
.end method

.method public writeLiteral(C)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1
    .param p1, "c"    # C

    .line 2452
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeInteger(I)Ljava/io/OutputStream;

    .line 2453
    return-object p0
.end method

.method public writeLiteral(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1
    .param p1, "n"    # F

    .line 2463
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    .line 2464
    return-object p0
.end method

.method public writeLiteral(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 2441
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeString(Ljava/lang/String;)Ljava/io/OutputStream;

    .line 2442
    return-object p0
.end method

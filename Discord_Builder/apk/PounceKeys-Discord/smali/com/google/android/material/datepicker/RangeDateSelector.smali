.class public Lcom/google/android/material/datepicker/RangeDateSelector;
.super Ljava/lang/Object;
.source "RangeDateSelector.java"

# interfaces
.implements Lcom/google/android/material/datepicker/DateSelector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/material/datepicker/DateSelector<",
        "Landroidx/core/util/Pair<",
        "Ljava/lang/Long;",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/datepicker/RangeDateSelector;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final invalidRangeEndError:Ljava/lang/String;

.field private invalidRangeStartError:Ljava/lang/String;

.field private proposedTextEnd:Ljava/lang/Long;

.field private proposedTextStart:Ljava/lang/Long;

.field private selectedEndItem:Ljava/lang/Long;

.field private selectedStartItem:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 279
    new-instance v0, Lcom/google/android/material/datepicker/RangeDateSelector$3;

    invoke-direct {v0}, Lcom/google/android/material/datepicker/RangeDateSelector$3;-><init>()V

    sput-object v0, Lcom/google/android/material/datepicker/RangeDateSelector;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, " "

    iput-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->invalidRangeEndError:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    .line 57
    iput-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    .line 58
    iput-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->proposedTextStart:Ljava/lang/Long;

    .line 59
    iput-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->proposedTextEnd:Ljava/lang/Long;

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/material/datepicker/RangeDateSelector;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/datepicker/RangeDateSelector;
    .param p1, "x1"    # Ljava/lang/Long;

    .line 51
    iput-object p1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->proposedTextStart:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/material/datepicker/RangeDateSelector;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/OnSelectionChangedListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/datepicker/RangeDateSelector;
    .param p1, "x1"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p2, "x2"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p3, "x3"    # Lcom/google/android/material/datepicker/OnSelectionChangedListener;

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/datepicker/RangeDateSelector;->updateIfValidTextProposal(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/OnSelectionChangedListener;)V

    return-void
.end method

.method static synthetic access$202(Lcom/google/android/material/datepicker/RangeDateSelector;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/datepicker/RangeDateSelector;
    .param p1, "x1"    # Ljava/lang/Long;

    .line 51
    iput-object p1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->proposedTextEnd:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$302(Lcom/google/android/material/datepicker/RangeDateSelector;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/datepicker/RangeDateSelector;
    .param p1, "x1"    # Ljava/lang/Long;

    .line 51
    iput-object p1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/android/material/datepicker/RangeDateSelector;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/datepicker/RangeDateSelector;
    .param p1, "x1"    # Ljava/lang/Long;

    .line 51
    iput-object p1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    return-object p1
.end method

.method private clearInvalidRange(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 3
    .param p1, "start"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p2, "end"    # Lcom/google/android/material/textfield/TextInputLayout;

    .line 263
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->invalidRangeStartError:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 266
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, " "

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    invoke-virtual {p2, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 269
    :cond_1
    return-void
.end method

.method private isValidRange(JJ)Z
    .locals 1
    .param p1, "start"    # J
    .param p3, "end"    # J

    .line 240
    cmp-long v0, p1, p3

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setInvalidRange(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 1
    .param p1, "start"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p2, "end"    # Lcom/google/android/material/textfield/TextInputLayout;

    .line 272
    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->invalidRangeStartError:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 273
    const-string v0, " "

    invoke-virtual {p2, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 274
    return-void
.end method

.method private updateIfValidTextProposal(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/OnSelectionChangedListener;)V
    .locals 4
    .param p1, "startTextInput"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p2, "endTextInput"    # Lcom/google/android/material/textfield/TextInputLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/textfield/TextInputLayout;",
            "Lcom/google/android/material/textfield/TextInputLayout;",
            "Lcom/google/android/material/datepicker/OnSelectionChangedListener<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    .line 247
    .local p3, "listener":Lcom/google/android/material/datepicker/OnSelectionChangedListener;, "Lcom/google/android/material/datepicker/OnSelectionChangedListener<Landroidx/core/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;>;"
    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->proposedTextStart:Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->proposedTextEnd:Ljava/lang/Long;

    if-nez v1, :cond_0

    goto :goto_1

    .line 252
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->proposedTextEnd:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/material/datepicker/RangeDateSelector;->isValidRange(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->proposedTextStart:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    .line 254
    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->proposedTextEnd:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    .line 255
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/RangeDateSelector;->getSelection()Landroidx/core/util/Pair;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/android/material/datepicker/OnSelectionChangedListener;->onSelectionChanged(Ljava/lang/Object;)V

    goto :goto_0

    .line 257
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/datepicker/RangeDateSelector;->setInvalidRange(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 258
    invoke-virtual {p3}, Lcom/google/android/material/datepicker/OnSelectionChangedListener;->onIncompleteSelectionChanged()V

    .line 260
    :goto_0
    return-void

    .line 248
    :cond_2
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/datepicker/RangeDateSelector;->clearInvalidRange(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 249
    invoke-virtual {p3}, Lcom/google/android/material/datepicker/OnSelectionChangedListener;->onIncompleteSelectionChanged()V

    .line 250
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultThemeResId(Landroid/content/Context;)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 125
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 126
    .local v1, "display":Landroid/util/DisplayMetrics;
    sget v2, Lcom/google/android/material/R$dimen;->mtrl_calendar_maximum_default_fullscreen_minor_axis:I

    .line 127
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 128
    .local v2, "maximumDefaultFullscreenMinorAxis":I
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 130
    .local v3, "minorAxisPx":I
    if-le v3, v2, :cond_0

    .line 131
    sget v4, Lcom/google/android/material/R$attr;->materialCalendarTheme:I

    goto :goto_0

    .line 132
    :cond_0
    sget v4, Lcom/google/android/material/R$attr;->materialCalendarFullscreenTheme:I

    :goto_0
    nop

    .line 133
    .local v4, "defaultThemeAttr":I
    const-class v5, Lcom/google/android/material/datepicker/MaterialDatePicker;

    .line 134
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    .line 133
    invoke-static {p1, v4, v5}, Lcom/google/android/material/resources/MaterialAttributes;->resolveOrThrow(Landroid/content/Context;ILjava/lang/String;)I

    move-result v5

    return v5
.end method

.method public getDefaultTitleResId()I
    .locals 1

    .line 164
    sget v0, Lcom/google/android/material/R$string;->mtrl_picker_range_header_title:I

    return v0
.end method

.method public getSelectedDays()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v0, "selections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 117
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_1
    return-object v0
.end method

.method public getSelectedRanges()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    if-nez v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v0, "ranges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;>;"
    new-instance v1, Landroidx/core/util/Pair;

    iget-object v2, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    iget-object v3, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    invoke-direct {v1, v2, v3}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    .local v1, "range":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    return-object v0

    .line 101
    .end local v0    # "ranges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;>;"
    .end local v1    # "range":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getSelection()Landroidx/core/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 94
    new-instance v0, Landroidx/core/util/Pair;

    iget-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    iget-object v2, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    invoke-direct {v0, v1, v2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic getSelection()Ljava/lang/Object;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/RangeDateSelector;->getSelection()Landroidx/core/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionDisplayString(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 141
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    if-nez v2, :cond_0

    .line 142
    sget v1, Lcom/google/android/material/R$string;->mtrl_picker_range_header_unselected:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 144
    :cond_0
    iget-object v2, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 145
    sget v1, Lcom/google/android/material/R$string;->mtrl_picker_range_header_only_start_selected:I

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    .line 147
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/material/datepicker/DateStrings;->getDateString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 145
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 149
    :cond_1
    if-nez v1, :cond_2

    .line 150
    sget v1, Lcom/google/android/material/R$string;->mtrl_picker_range_header_only_end_selected:I

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    .line 152
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/material/datepicker/DateStrings;->getDateString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 150
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 154
    :cond_2
    nop

    .line 155
    invoke-static {v1, v2}, Lcom/google/android/material/datepicker/DateStrings;->getDateRangeString(Ljava/lang/Long;Ljava/lang/Long;)Landroidx/core/util/Pair;

    move-result-object v1

    .line 156
    .local v1, "dateRangeStrings":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    sget v2, Lcom/google/android/material/R$string;->mtrl_picker_range_header_selected:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    aput-object v6, v5, v3

    iget-object v3, v1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    aput-object v3, v5, v4

    invoke-virtual {v0, v2, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public isSelectionComplete()Z
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/material/datepicker/RangeDateSelector;->isValidRange(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 75
    :goto_0
    return v0
.end method

.method public onCreateTextInputView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/OnSelectionChangedListener;)Landroid/view/View;
    .locals 18
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "constraints"    # Lcom/google/android/material/datepicker/CalendarConstraints;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/ViewGroup;",
            "Landroid/os/Bundle;",
            "Lcom/google/android/material/datepicker/CalendarConstraints;",
            "Lcom/google/android/material/datepicker/OnSelectionChangedListener<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 174
    .local p5, "listener":Lcom/google/android/material/datepicker/OnSelectionChangedListener;, "Lcom/google/android/material/datepicker/OnSelectionChangedListener<Landroidx/core/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;>;"
    move-object/from16 v9, p0

    sget v0, Lcom/google/android/material/R$layout;->mtrl_picker_text_input_date_range:I

    .line 175
    const/4 v10, 0x0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    invoke-virtual {v11, v0, v12, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .line 177
    .local v13, "root":Landroid/view/View;
    sget v0, Lcom/google/android/material/R$id;->mtrl_picker_text_input_range_start:I

    .line 178
    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/google/android/material/textfield/TextInputLayout;

    .line 179
    .local v14, "startTextInput":Lcom/google/android/material/textfield/TextInputLayout;
    sget v0, Lcom/google/android/material/R$id;->mtrl_picker_text_input_range_end:I

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/google/android/material/textfield/TextInputLayout;

    .line 180
    .local v15, "endTextInput":Lcom/google/android/material/textfield/TextInputLayout;
    invoke-virtual {v14}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v8

    .line 181
    .local v8, "startEditText":Landroid/widget/EditText;
    invoke-virtual {v15}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v7

    .line 182
    .local v7, "endEditText":Landroid/widget/EditText;
    invoke-static {}, Lcom/google/android/material/internal/ManufacturerUtils;->isDateInputKeyboardMissingSeparatorCharacters()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    const/16 v0, 0x11

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 185
    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 188
    :cond_0
    invoke-virtual {v13}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$string;->mtrl_picker_invalid_range:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/material/datepicker/RangeDateSelector;->invalidRangeStartError:Ljava/lang/String;

    .line 190
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTextInputFormat()Ljava/text/SimpleDateFormat;

    move-result-object v6

    .line 192
    .local v6, "format":Ljava/text/SimpleDateFormat;
    iget-object v0, v9, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 193
    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, v9, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    iput-object v0, v9, Lcom/google/android/material/datepicker/RangeDateSelector;->proposedTextStart:Ljava/lang/Long;

    .line 196
    :cond_1
    iget-object v0, v9, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 197
    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, v9, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    iput-object v0, v9, Lcom/google/android/material/datepicker/RangeDateSelector;->proposedTextEnd:Ljava/lang/Long;

    .line 201
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/google/android/material/datepicker/UtcDates;->getTextInputHint(Landroid/content/res/Resources;Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v5

    .line 202
    .local v5, "formatHint":Ljava/lang/String;
    invoke-virtual {v14, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderText(Ljava/lang/CharSequence;)V

    .line 203
    invoke-virtual {v15, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderText(Ljava/lang/CharSequence;)V

    .line 205
    new-instance v4, Lcom/google/android/material/datepicker/RangeDateSelector$1;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v5

    move-object v3, v6

    move-object v10, v4

    move-object v4, v14

    move-object/from16 v16, v5

    .end local v5    # "formatHint":Ljava/lang/String;
    .local v16, "formatHint":Ljava/lang/String;
    move-object/from16 v5, p4

    move-object/from16 v17, v6

    .end local v6    # "format":Ljava/text/SimpleDateFormat;
    .local v17, "format":Ljava/text/SimpleDateFormat;
    move-object v6, v14

    move-object v9, v7

    .end local v7    # "endEditText":Landroid/widget/EditText;
    .local v9, "endEditText":Landroid/widget/EditText;
    move-object v7, v15

    move-object v11, v8

    .end local v8    # "startEditText":Landroid/widget/EditText;
    .local v11, "startEditText":Landroid/widget/EditText;
    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/datepicker/RangeDateSelector$1;-><init>(Lcom/google/android/material/datepicker/RangeDateSelector;Ljava/lang/String;Ljava/text/DateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/OnSelectionChangedListener;)V

    invoke-virtual {v11, v10}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 221
    new-instance v10, Lcom/google/android/material/datepicker/RangeDateSelector$2;

    move-object v0, v10

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object v4, v15

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/datepicker/RangeDateSelector$2;-><init>(Lcom/google/android/material/datepicker/RangeDateSelector;Ljava/lang/String;Ljava/text/DateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/OnSelectionChangedListener;)V

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 234
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/widget/EditText;

    const/4 v1, 0x0

    aput-object v11, v0, v1

    const/4 v1, 0x1

    aput-object v9, v0, v1

    invoke-static {v0}, Lcom/google/android/material/datepicker/DateSelector$-CC;->showKeyboardWithAutoHideBehavior([Landroid/widget/EditText;)V

    .line 236
    return-object v13
.end method

.method public select(J)V
    .locals 2
    .param p1, "selection"    # J

    .line 63
    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 64
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    goto :goto_0

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/android/material/datepicker/RangeDateSelector;->isValidRange(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    goto :goto_0

    .line 68
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    .line 69
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    .line 71
    :goto_0
    return-void
.end method

.method public setSelection(Landroidx/core/util/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 82
    .local p1, "selection":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    iget-object v0, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/material/datepicker/RangeDateSelector;->isValidRange(JJ)Z

    move-result v0

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 85
    :cond_0
    nop

    .line 86
    iget-object v0, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/material/datepicker/UtcDates;->canonicalYearMonthDay(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    .line 87
    nop

    .line 88
    iget-object v0, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/UtcDates;->canonicalYearMonthDay(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    .line 89
    return-void
.end method

.method public bridge synthetic setSelection(Ljava/lang/Object;)V
    .locals 0

    .line 50
    check-cast p1, Landroidx/core/util/Pair;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/RangeDateSelector;->setSelection(Landroidx/core/util/Pair;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 305
    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 306
    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 307
    return-void
.end method

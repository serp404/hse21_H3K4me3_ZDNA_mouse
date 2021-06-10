# Bioinformatics course project by Sergey Petrovich

Сохраненная сессия в UCSC GenomeBrowser:  http://genome.ucsc.edu/s/handsome_belarus/myTracks

## Распределение длин пиков на изначальных данных и их число:

### Для ENCFF081XAR:
![alt text](https://github.com/serp404/hse21_H3K4me3_ZDNA_mouse/blob/88c21dc512e50a00288691f913d95fd7d047dcd5/results/png_copies/len_hist.H3K4me3_CH12.ENCFF081XAR.mm10.pdf.png-1.png)

### Для ENCFF150KSB:
![alt text](https://github.com/serp404/hse21_H3K4me3_ZDNA_mouse/blob/88c21dc512e50a00288691f913d95fd7d047dcd5/results/png_copies/len_hist.H3K4me3_CH12.ENCFF150KSB.mm10.pdf.png-1.png)


## Распределение длин отфильтрованных пиков и их число (по порогу 5000 в обоих случаях):

### Для ENCFF081XAR:
![alt text](https://github.com/serp404/hse21_H3K4me3_ZDNA_mouse/blob/88c21dc512e50a00288691f913d95fd7d047dcd5/results/png_copies/filter_peaks.H3K4me3_CH12.ENCFF081XAR.mm10.filtered.hist.pdf.png-1.png)

### Для ENCFF150KSB:
![alt text](https://github.com/serp404/hse21_H3K4me3_ZDNA_mouse/blob/88c21dc512e50a00288691f913d95fd7d047dcd5/results/png_copies/filter_peaks.H3K4me3_CH12.ENCFF150KSB.mm10.filtered.hist.pdf.png-1.png)


## Расположение пиков гистоновой метки относительно аннотированных генов:

### Для ENCFF081XAR:
![alt text](https://github.com/serp404/hse21_H3K4me3_ZDNA_mouse/blob/88c21dc512e50a00288691f913d95fd7d047dcd5/results/png_copies/chip_seeker.H3K4me3_CH12.ENCFF081XAR.mm10.filtered.annopie.pdf.png-1.png)

### Для ENCFF150KSB:
![alt text](https://github.com/serp404/hse21_H3K4me3_ZDNA_mouse/blob/88c21dc512e50a00288691f913d95fd7d047dcd5/results/png_copies/chip_seeker.H3K4me3_CH12.ENCFF150KSB.mm10.filtered.annopie.pdf.png-1.png)


## Распределение длин участков вторичной структуры ДНК:
![alt text](https://github.com/serp404/hse21_H3K4me3_ZDNA_mouse/blob/88c21dc512e50a00288691f913d95fd7d047dcd5/results/png_copies/len_hist.mouseZ-DNA1.pdf.png-1.png)

## Расположение участков структуры ДНК относительно аннотированных генов:
![alt text](https://github.com/serp404/hse21_H3K4me3_ZDNA_mouse/blob/88c21dc512e50a00288691f913d95fd7d047dcd5/results/png_copies/chip_seeker.mouseZ-DNA1.annopie.pdf.png-1.png)


## Распределения длин пересечений и их количество:
![alt text](https://github.com/serp404/hse21_H3K4me3_ZDNA_mouse/blob/88c21dc512e50a00288691f913d95fd7d047dcd5/results/png_copies/len_hist.H3K4me3_CH12.ZDNA.intersect.pdf.png-1.png)

## Расположение пересечений:
![alt text](https://github.com/serp404/hse21_H3K4me3_ZDNA_mouse/blob/88c21dc512e50a00288691f913d95fd7d047dcd5/results/png_copies/chip_seeker.H3K4me3_CH12.ZDNA.intersect.annopie.pdf.png-1.png)


## Визуализация исходных участков ДНК и пересечения с гистоновой меткой в Genome Browser

### Пересечение на chr16 примерно: 30,388,400 - 30,388,800
![alt text](https://github.com/serp404/hse21_H3K4me3_ZDNA_mouse/blob/0fed49e02c62e42f8f7b62d436cf5b0f5d34aa49/results/ucsc_intersect1.png)

### Пересечение на chr16 примерно: 20,621,250 - 20,621,600
![alt text](https://github.com/serp404/hse21_H3K4me3_ZDNA_mouse/blob/0fed49e02c62e42f8f7b62d436cf5b0f5d34aa49/results/ucsc_intersect2.png)

## Ассоциация пересечений с генами
Количество пиков, которые удалось проассоциировать: 669

Количество уникальных генов: 604

## GO анализ

### Общая информация:
![alt text](https://github.com/serp404/hse21_H3K4me3_ZDNA_mouse/blob/b6b511ce03f0348dd50d832246d3c7a04da3a6f1/results/go_results.png)

### Наиболее важные категории:
![alt text](https://github.com/serp404/hse21_H3K4me3_ZDNA_mouse/blob/b6b511ce03f0348dd50d832246d3c7a04da3a6f1/results/go_smallest.png)

## Использованные команды:
**wget [link]** – скачивание файла по ссылке;

**zcat [file] | cut -f1-5 > [file]** - обрезаниие первых пяти столбцов в архииве

**liftOver [oldFile][map.chain][newFile][unMapped]** - конвертация координат

**git clone [link]** - создание локальной версии гитхаб-репозитория

**git pull** - скачивание последней версии репозитория

**git add .** - добавление файла к категории отслеживания

**git commit -m 'message'**  - создания коммита

**git push** - отправка локальной версии репозитория на хитхаб

**cat \*.filtered.bed | sort -k1,1 -k2,2n | bedtools merge > H3K4me3_H1.merge.hg19.bed** - объединение файлов и их сортировка

**bedtoold intersect -a [file] -b [file]** - пересечение генов
